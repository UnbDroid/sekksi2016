# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build

# Include any dependencies generated for this target.
include demos/CMakeFiles/sound-test.dir/depend.make

# Include the progress variables for this target.
include demos/CMakeFiles/sound-test.dir/progress.make

# Include the compile flags for this target's objects.
include demos/CMakeFiles/sound-test.dir/flags.make

demos/CMakeFiles/sound-test.dir/sound-test.cpp.o: demos/CMakeFiles/sound-test.dir/flags.make
demos/CMakeFiles/sound-test.dir/sound-test.cpp.o: ../demos/sound-test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demos/CMakeFiles/sound-test.dir/sound-test.cpp.o"
	cd /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/demos && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sound-test.dir/sound-test.cpp.o -c /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/demos/sound-test.cpp

demos/CMakeFiles/sound-test.dir/sound-test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sound-test.dir/sound-test.cpp.i"
	cd /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/demos/sound-test.cpp > CMakeFiles/sound-test.dir/sound-test.cpp.i

demos/CMakeFiles/sound-test.dir/sound-test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sound-test.dir/sound-test.cpp.s"
	cd /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/demos/sound-test.cpp -o CMakeFiles/sound-test.dir/sound-test.cpp.s

demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.requires:

.PHONY : demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.requires

demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.provides: demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.requires
	$(MAKE) -f demos/CMakeFiles/sound-test.dir/build.make demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.provides.build
.PHONY : demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.provides

demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.provides.build: demos/CMakeFiles/sound-test.dir/sound-test.cpp.o


# Object files for target sound-test
sound__test_OBJECTS = \
"CMakeFiles/sound-test.dir/sound-test.cpp.o"

# External object files for target sound-test
sound__test_EXTERNAL_OBJECTS =

demos/sound-test: demos/CMakeFiles/sound-test.dir/sound-test.cpp.o
demos/sound-test: demos/CMakeFiles/sound-test.dir/build.make
demos/sound-test: libev3dev.a
demos/sound-test: demos/CMakeFiles/sound-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sound-test"
	cd /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/demos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sound-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demos/CMakeFiles/sound-test.dir/build: demos/sound-test

.PHONY : demos/CMakeFiles/sound-test.dir/build

demos/CMakeFiles/sound-test.dir/requires: demos/CMakeFiles/sound-test.dir/sound-test.cpp.o.requires

.PHONY : demos/CMakeFiles/sound-test.dir/requires

demos/CMakeFiles/sound-test.dir/clean:
	cd /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/demos && $(CMAKE_COMMAND) -P CMakeFiles/sound-test.dir/cmake_clean.cmake
.PHONY : demos/CMakeFiles/sound-test.dir/clean

demos/CMakeFiles/sound-test.dir/depend:
	cd /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/demos /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/demos /home/luan/Droid_repositorios/sekksi2016/testes/EV3/ev3dev/cpp/meuprimeiroprograma/build/demos/CMakeFiles/sound-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demos/CMakeFiles/sound-test.dir/depend

