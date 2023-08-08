#include <iostream>
#include <fstream>
#include <vector>
#include <mpi.h>

using namespace std;

// Estructura para representar un píxel en una imagen PGM
struct Pixel {
    unsigned char value;
};

// Función para leer una imagen en formato PGM
bool readPGM(const char* filename, vector<Pixel>& image, int& width, int& height) {
    ifstream file(filename, ios::binary);

    if (!file) {
        cerr << "Error al abrir el archivo." << endl;
        return false;
    }

    string format;
    file >> format;

    if (format != "P5") {
        cerr << "Formato de archivo incorrecto." << endl;
        return false;
    }

    file >> width >> height;

    int maxval;
    file >> maxval;

    image.resize(width * height);

    file.read(reinterpret_cast<char*>(image.data()), width * height);

    return true;
}

int main(int argc, char** argv) {
    MPI_Init(&argc, &argv);

    int rank, size;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    if (argc != 2) {
        if (rank == 0) {
            cout << "Uso: " << argv[0] << " <imagen.pgm>" << endl;
        }
        MPI_Finalize();
        return 1;
    }

    const char* filename = argv[1];

    int width, height;
    vector<Pixel> image;

    if (rank == 0) {
        if (!readPGM(filename, image, width, height)) {
            MPI_Finalize();
            return 1;
        }
    }

    // Broadcast dimensions to all processes
    MPI_Bcast(&width, 1, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Bcast(&height, 1, MPI_INT, 0, MPI_COMM_WORLD);

    // Calculate local histogram
    vector<int> local_histogram(256, 0);
    int chunk_size = width * height / size;

    for (int i = rank * chunk_size; i < (rank + 1) * chunk_size; ++i) {
        local_histogram[image[i].value]++;
    }

    // Reduce histograms from all processes
    vector<int> global_histogram(256, 0);
    MPI_Reduce(local_histogram.data(), global_histogram.data(), 256, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);

    if (rank == 0) {
        // Print global histogram
        for (int i = 0; i < 256; ++i) {
            cout << i << ": " << global_histogram[i] << endl;
        }
    }

    MPI_Finalize();
    return 0;
}
