# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build"

# Include any dependencies generated for this target.
include analysis/statistics/CMakeFiles/sta_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include analysis/statistics/CMakeFiles/sta_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include analysis/statistics/CMakeFiles/sta_lib.dir/progress.make

# Include the compile flags for this target's objects.
include analysis/statistics/CMakeFiles/sta_lib.dir/flags.make

analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.o: analysis/statistics/CMakeFiles/sta_lib.dir/flags.make
analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.o: ../analysis/statistics/statistics.cpp
analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.o: analysis/statistics/CMakeFiles/sta_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.o"
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics" && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.o -MF CMakeFiles/sta_lib.dir/statistics.cpp.o.d -o CMakeFiles/sta_lib.dir/statistics.cpp.o -c "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/analysis/statistics/statistics.cpp"

analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sta_lib.dir/statistics.cpp.i"
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics" && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/analysis/statistics/statistics.cpp" > CMakeFiles/sta_lib.dir/statistics.cpp.i

analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sta_lib.dir/statistics.cpp.s"
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics" && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/analysis/statistics/statistics.cpp" -o CMakeFiles/sta_lib.dir/statistics.cpp.s

# Object files for target sta_lib
sta_lib_OBJECTS = \
"CMakeFiles/sta_lib.dir/statistics.cpp.o"

# External object files for target sta_lib
sta_lib_EXTERNAL_OBJECTS =

analysis/statistics/libsta_lib.a: analysis/statistics/CMakeFiles/sta_lib.dir/statistics.cpp.o
analysis/statistics/libsta_lib.a: analysis/statistics/CMakeFiles/sta_lib.dir/build.make
analysis/statistics/libsta_lib.a: analysis/statistics/CMakeFiles/sta_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsta_lib.a"
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics" && $(CMAKE_COMMAND) -P CMakeFiles/sta_lib.dir/cmake_clean_target.cmake
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sta_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
analysis/statistics/CMakeFiles/sta_lib.dir/build: analysis/statistics/libsta_lib.a
.PHONY : analysis/statistics/CMakeFiles/sta_lib.dir/build

analysis/statistics/CMakeFiles/sta_lib.dir/clean:
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics" && $(CMAKE_COMMAND) -P CMakeFiles/sta_lib.dir/cmake_clean.cmake
.PHONY : analysis/statistics/CMakeFiles/sta_lib.dir/clean

analysis/statistics/CMakeFiles/sta_lib.dir/depend:
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/analysis/statistics" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/analysis/statistics/CMakeFiles/sta_lib.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : analysis/statistics/CMakeFiles/sta_lib.dir/depend

