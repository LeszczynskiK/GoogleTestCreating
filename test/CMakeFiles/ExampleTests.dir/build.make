# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/krzysiek89/Desktop/CPP_programs/GoogleTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/krzysiek89/Desktop/CPP_programs/GoogleTest

# Include any dependencies generated for this target.
include test/CMakeFiles/ExampleTests.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ExampleTests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/ExampleTests.dir/flags.make

test/CMakeFiles/ExampleTests.dir/ExampleTests.cpp.o: test/CMakeFiles/ExampleTests.dir/flags.make
test/CMakeFiles/ExampleTests.dir/ExampleTests.cpp.o: test/ExampleTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/krzysiek89/Desktop/CPP_programs/GoogleTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/ExampleTests.dir/ExampleTests.cpp.o"
	cd /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ExampleTests.dir/ExampleTests.cpp.o -c /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test/ExampleTests.cpp

test/CMakeFiles/ExampleTests.dir/ExampleTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ExampleTests.dir/ExampleTests.cpp.i"
	cd /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test/ExampleTests.cpp > CMakeFiles/ExampleTests.dir/ExampleTests.cpp.i

test/CMakeFiles/ExampleTests.dir/ExampleTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ExampleTests.dir/ExampleTests.cpp.s"
	cd /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test/ExampleTests.cpp -o CMakeFiles/ExampleTests.dir/ExampleTests.cpp.s

# Object files for target ExampleTests
ExampleTests_OBJECTS = \
"CMakeFiles/ExampleTests.dir/ExampleTests.cpp.o"

# External object files for target ExampleTests
ExampleTests_EXTERNAL_OBJECTS =

test/ExampleTests: test/CMakeFiles/ExampleTests.dir/ExampleTests.cpp.o
test/ExampleTests: test/CMakeFiles/ExampleTests.dir/build.make
test/ExampleTests: lib/libgtest_main.a
test/ExampleTests: libGoogleTest.a
test/ExampleTests: lib/libgtest.a
test/ExampleTests: test/CMakeFiles/ExampleTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/krzysiek89/Desktop/CPP_programs/GoogleTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ExampleTests"
	cd /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ExampleTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/ExampleTests.dir/build: test/ExampleTests

.PHONY : test/CMakeFiles/ExampleTests.dir/build

test/CMakeFiles/ExampleTests.dir/clean:
	cd /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test && $(CMAKE_COMMAND) -P CMakeFiles/ExampleTests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ExampleTests.dir/clean

test/CMakeFiles/ExampleTests.dir/depend:
	cd /home/krzysiek89/Desktop/CPP_programs/GoogleTest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/krzysiek89/Desktop/CPP_programs/GoogleTest /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test /home/krzysiek89/Desktop/CPP_programs/GoogleTest /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test /home/krzysiek89/Desktop/CPP_programs/GoogleTest/test/CMakeFiles/ExampleTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ExampleTests.dir/depend

