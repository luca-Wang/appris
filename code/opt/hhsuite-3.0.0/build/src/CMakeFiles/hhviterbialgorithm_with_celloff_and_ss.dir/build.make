# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /local/jmrodriguez/appris/code/opt/hh-suite

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /local/jmrodriguez/appris/code/opt/hh-suite/build

# Include any dependencies generated for this target.
include src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/flags.make

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o: src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/flags.make
src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o: ../src/hhviterbialgorithm.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /local/jmrodriguez/appris/code/opt/hh-suite/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o"
	cd /local/jmrodriguez/appris/code/opt/hh-suite/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o -c /local/jmrodriguez/appris/code/opt/hh-suite/src/hhviterbialgorithm.cpp

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.i"
	cd /local/jmrodriguez/appris/code/opt/hh-suite/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /local/jmrodriguez/appris/code/opt/hh-suite/src/hhviterbialgorithm.cpp > CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.i

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.s"
	cd /local/jmrodriguez/appris/code/opt/hh-suite/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /local/jmrodriguez/appris/code/opt/hh-suite/src/hhviterbialgorithm.cpp -o CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.s

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.requires:
.PHONY : src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.requires

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.provides: src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/build.make src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.provides.build
.PHONY : src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.provides

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.provides.build: src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o

hhviterbialgorithm_with_celloff_and_ss: src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o
hhviterbialgorithm_with_celloff_and_ss: src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/build.make
.PHONY : hhviterbialgorithm_with_celloff_and_ss

# Rule to build all files generated by this target.
src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/build: hhviterbialgorithm_with_celloff_and_ss
.PHONY : src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/build

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/requires: src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/hhviterbialgorithm.cpp.o.requires
.PHONY : src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/requires

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/clean:
	cd /local/jmrodriguez/appris/code/opt/hh-suite/build/src && $(CMAKE_COMMAND) -P CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/clean

src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/depend:
	cd /local/jmrodriguez/appris/code/opt/hh-suite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/jmrodriguez/appris/code/opt/hh-suite /local/jmrodriguez/appris/code/opt/hh-suite/src /local/jmrodriguez/appris/code/opt/hh-suite/build /local/jmrodriguez/appris/code/opt/hh-suite/build/src /local/jmrodriguez/appris/code/opt/hh-suite/build/src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/hhviterbialgorithm_with_celloff_and_ss.dir/depend
