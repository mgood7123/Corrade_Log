# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD

# Include any dependencies generated for this target.
include CMakeFiles/Corrade_Log.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Corrade_Log.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Corrade_Log.dir/flags.make

CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.o: CMakeFiles/Corrade_Log.dir/flags.make
CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.o: ../src/Corrade_AndroidLogStreamBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.o -c /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_AndroidLogStreamBuffer.cpp

CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_AndroidLogStreamBuffer.cpp > CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.i

CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_AndroidLogStreamBuffer.cpp -o CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.s

CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.o: CMakeFiles/Corrade_Log.dir/flags.make
CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.o: ../src/Corrade_Debug.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.o -c /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_Debug.cpp

CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_Debug.cpp > CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.i

CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_Debug.cpp -o CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.s

CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.o: CMakeFiles/Corrade_Log.dir/flags.make
CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.o: ../src/Corrade_String.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.o -c /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_String.cpp

CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_String.cpp > CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.i

CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_String.cpp -o CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.s

CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.o: CMakeFiles/Corrade_Log.dir/flags.make
CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.o: ../src/Corrade_StringView.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.o -c /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_StringView.cpp

CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_StringView.cpp > CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.i

CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/src/Corrade_StringView.cpp -o CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.s

# Object files for target Corrade_Log
Corrade_Log_OBJECTS = \
"CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.o" \
"CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.o" \
"CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.o" \
"CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.o"

# External object files for target Corrade_Log
Corrade_Log_EXTERNAL_OBJECTS =

libCorrade_Log.dylib: CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.o
libCorrade_Log.dylib: CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.o
libCorrade_Log.dylib: CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.o
libCorrade_Log.dylib: CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.o
libCorrade_Log.dylib: CMakeFiles/Corrade_Log.dir/build.make
libCorrade_Log.dylib: CMakeFiles/Corrade_Log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libCorrade_Log.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Corrade_Log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Corrade_Log.dir/build: libCorrade_Log.dylib

.PHONY : CMakeFiles/Corrade_Log.dir/build

CMakeFiles/Corrade_Log.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Corrade_Log.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Corrade_Log.dir/clean

CMakeFiles/Corrade_Log.dir/depend:
	cd /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD/CMakeFiles/Corrade_Log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Corrade_Log.dir/depend
