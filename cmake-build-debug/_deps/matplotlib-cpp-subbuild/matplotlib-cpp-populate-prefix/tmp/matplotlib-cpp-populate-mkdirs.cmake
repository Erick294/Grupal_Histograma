# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-src"
  "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-build"
  "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-subbuild/matplotlib-cpp-populate-prefix"
  "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-subbuild/matplotlib-cpp-populate-prefix/tmp"
  "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-subbuild/matplotlib-cpp-populate-prefix/src/matplotlib-cpp-populate-stamp"
  "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-subbuild/matplotlib-cpp-populate-prefix/src"
  "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-subbuild/matplotlib-cpp-populate-prefix/src/matplotlib-cpp-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-subbuild/matplotlib-cpp-populate-prefix/src/matplotlib-cpp-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/jkmoncayo/Downloads/GrupalHistograma/cmake-build-debug/_deps/matplotlib-cpp-subbuild/matplotlib-cpp-populate-prefix/src/matplotlib-cpp-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
