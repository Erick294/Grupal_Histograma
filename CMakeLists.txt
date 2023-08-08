cmake_minimum_required(VERSION 3.12)
project(GrupalHistograma)

set(CMAKE_CXX_STANDARD 17)

include_directories(lodepng)
add_library(lodepng lodepng/lodepng.cpp)

ADD_EXECUTABLE(GrupalHistograma main.cpp)
TARGET_LINK_LIBRARIES(GrupalHistograma lodepng)



