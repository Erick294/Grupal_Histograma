# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/linuxbrew/.linuxbrew/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /home/linuxbrew/.linuxbrew/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspace/Grupal_Histograma

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspace/Grupal_Histograma

# Include any dependencies generated for this target.
include CMakeFiles/GrupalHistograma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GrupalHistograma.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GrupalHistograma.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GrupalHistograma.dir/flags.make

CMakeFiles/GrupalHistograma.dir/main.cpp.o: CMakeFiles/GrupalHistograma.dir/flags.make
CMakeFiles/GrupalHistograma.dir/main.cpp.o: main.cpp
CMakeFiles/GrupalHistograma.dir/main.cpp.o: CMakeFiles/GrupalHistograma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/Grupal_Histograma/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GrupalHistograma.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GrupalHistograma.dir/main.cpp.o -MF CMakeFiles/GrupalHistograma.dir/main.cpp.o.d -o CMakeFiles/GrupalHistograma.dir/main.cpp.o -c /workspace/Grupal_Histograma/main.cpp

CMakeFiles/GrupalHistograma.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GrupalHistograma.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/Grupal_Histograma/main.cpp > CMakeFiles/GrupalHistograma.dir/main.cpp.i

CMakeFiles/GrupalHistograma.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GrupalHistograma.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/Grupal_Histograma/main.cpp -o CMakeFiles/GrupalHistograma.dir/main.cpp.s

# Object files for target GrupalHistograma
GrupalHistograma_OBJECTS = \
"CMakeFiles/GrupalHistograma.dir/main.cpp.o"

# External object files for target GrupalHistograma
GrupalHistograma_EXTERNAL_OBJECTS =

GrupalHistograma: CMakeFiles/GrupalHistograma.dir/main.cpp.o
GrupalHistograma: CMakeFiles/GrupalHistograma.dir/build.make
GrupalHistograma: liblodepng.a
GrupalHistograma: CMakeFiles/GrupalHistograma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspace/Grupal_Histograma/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable GrupalHistograma"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GrupalHistograma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GrupalHistograma.dir/build: GrupalHistograma
.PHONY : CMakeFiles/GrupalHistograma.dir/build

CMakeFiles/GrupalHistograma.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GrupalHistograma.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GrupalHistograma.dir/clean

CMakeFiles/GrupalHistograma.dir/depend:
	cd /workspace/Grupal_Histograma && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/Grupal_Histograma /workspace/Grupal_Histograma /workspace/Grupal_Histograma /workspace/Grupal_Histograma /workspace/Grupal_Histograma/CMakeFiles/GrupalHistograma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GrupalHistograma.dir/depend
