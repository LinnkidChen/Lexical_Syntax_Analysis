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
include CMakeFiles/Lexical_Syntax_Analysis.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lexical_Syntax_Analysis.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lexical_Syntax_Analysis.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lexical_Syntax_Analysis.dir/flags.make

CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o: CMakeFiles/Lexical_Syntax_Analysis.dir/flags.make
CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o: ../Main.cpp
CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o: CMakeFiles/Lexical_Syntax_Analysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o -MF CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o.d -o CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o -c "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/Main.cpp"

CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/Main.cpp" > CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.i

CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/Main.cpp" -o CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.s

# Object files for target Lexical_Syntax_Analysis
Lexical_Syntax_Analysis_OBJECTS = \
"CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o"

# External object files for target Lexical_Syntax_Analysis
Lexical_Syntax_Analysis_EXTERNAL_OBJECTS =

Lexical_Syntax_Analysis: CMakeFiles/Lexical_Syntax_Analysis.dir/Main.cpp.o
Lexical_Syntax_Analysis: CMakeFiles/Lexical_Syntax_Analysis.dir/build.make
Lexical_Syntax_Analysis: CMakeFiles/Lexical_Syntax_Analysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Lexical_Syntax_Analysis"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lexical_Syntax_Analysis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lexical_Syntax_Analysis.dir/build: Lexical_Syntax_Analysis
.PHONY : CMakeFiles/Lexical_Syntax_Analysis.dir/build

CMakeFiles/Lexical_Syntax_Analysis.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lexical_Syntax_Analysis.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lexical_Syntax_Analysis.dir/clean

CMakeFiles/Lexical_Syntax_Analysis.dir/depend:
	cd "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build" "/Users/tongchen/Library/Mobile Documents/com~apple~CloudDocs/Documents/Code/Lexical_Syntax_Analysis/build/CMakeFiles/Lexical_Syntax_Analysis.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Lexical_Syntax_Analysis.dir/depend

