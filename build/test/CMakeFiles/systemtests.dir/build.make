# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tren/Apps/klee

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tren/Apps/klee/build

# Utility rule file for systemtests.

# Include the progress variables for this target.
include test/CMakeFiles/systemtests.dir/progress.make

test/CMakeFiles/systemtests: bin/klee
test/CMakeFiles/systemtests: bin/kleaver
test/CMakeFiles/systemtests: bin/klee-replay
test/CMakeFiles/systemtests: lib/libkleeRuntest.so
test/CMakeFiles/systemtests: bin/gen-bout
test/CMakeFiles/systemtests: bin/gen-random-bout
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tren/Apps/klee/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running system tests"
	cd /home/tren/Apps/klee/build/test && /home/tren/.local/bin/lit -v -s /home/tren/Apps/klee/build/test

systemtests: test/CMakeFiles/systemtests
systemtests: test/CMakeFiles/systemtests.dir/build.make

.PHONY : systemtests

# Rule to build all files generated by this target.
test/CMakeFiles/systemtests.dir/build: systemtests

.PHONY : test/CMakeFiles/systemtests.dir/build

test/CMakeFiles/systemtests.dir/clean:
	cd /home/tren/Apps/klee/build/test && $(CMAKE_COMMAND) -P CMakeFiles/systemtests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/systemtests.dir/clean

test/CMakeFiles/systemtests.dir/depend:
	cd /home/tren/Apps/klee/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tren/Apps/klee /home/tren/Apps/klee/test /home/tren/Apps/klee/build /home/tren/Apps/klee/build/test /home/tren/Apps/klee/build/test/CMakeFiles/systemtests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/systemtests.dir/depend

