#include <iostream>
#include <vector>
#include <mpi.h>
#include <png++/png.hpp>

const int NUM_BINS = 256;

void computeHistogram(const png::image<png::rgb_pixel>& image, std::vector<int>& histogram) {
    for (size_t y = 0; y < image.get_height(); ++y) {
        for (size_t x = 0; x < image.get_width(); ++x) {
            png::rgb_pixel pixel = image[y][x];
            int gray = (pixel.red + pixel.green + pixel.blue) / 3;
            histogram[gray]++;
        }
    }
}

int main(int argc, char** argv) {
    MPI_Init(&argc, &argv);

    int rank, numProcesses;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &numProcesses);

    if (argc != 2) {
        if (rank == 0) {
            std::cerr << "Usage: " << argv[0] << " <input_image.png>" << std::endl;
        }
        MPI_Finalize();
        return 1;
    }

    const std::string inputFilename = argv[1];
    if (rank == 0) {
        png::image<png::rgb_pixel> image(inputFilename);
        std::vector<int> localHistogram(NUM_BINS, 0);

        computeHistogram(image, localHistogram);

        for (int i = 1; i < numProcesses; ++i) {
            std::vector<int> remoteHistogram(NUM_BINS, 0);
            MPI_Recv(remoteHistogram.data(), NUM_BINS, MPI_INT, i, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

            for (int j = 0; j < NUM_BINS; ++j) {
                localHistogram[j] += remoteHistogram[j];
            }
        }

        // Print or visualize the histogram as needed
        // For simplicity, let's just print the histogram values
        for (int i = 0; i < NUM_BINS; ++i) {
            std::cout << "Bin " << i << ": " << localHistogram[i] << std::endl;
        }
    } else {
        png::image<png::rgb_pixel> image(inputFilename);
        std::vector<int> localHistogram(NUM_BINS, 0);

        computeHistogram(image, localHistogram);

        MPI_Send(localHistogram.data(), NUM_BINS, MPI_INT, 0, 0, MPI_COMM_WORLD);
    }

    MPI_Finalize();
    return 0;
}
