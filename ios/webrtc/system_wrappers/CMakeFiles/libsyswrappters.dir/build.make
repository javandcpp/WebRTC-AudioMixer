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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/huaweichang/Downloads/webrtc/ios/webrtc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/huaweichang/Downloads/webrtc/ios/webrtc

# Include any dependencies generated for this target.
include system_wrappers/CMakeFiles/libsyswrappters.dir/depend.make
# Include the progress variables for this target.
include system_wrappers/CMakeFiles/libsyswrappters.dir/progress.make

# Include the compile flags for this target's objects.
include system_wrappers/CMakeFiles/libsyswrappters.dir/flags.make

system_wrappers/CMakeFiles/libsyswrappters.dir/source/field_trial.cc.o: system_wrappers/CMakeFiles/libsyswrappters.dir/flags.make
system_wrappers/CMakeFiles/libsyswrappters.dir/source/field_trial.cc.o: system_wrappers/source/field_trial.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huaweichang/Downloads/webrtc/ios/webrtc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object system_wrappers/CMakeFiles/libsyswrappters.dir/source/field_trial.cc.o"
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && /Applications/Xcode10.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libsyswrappters.dir/source/field_trial.cc.o -c /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers/source/field_trial.cc

system_wrappers/CMakeFiles/libsyswrappters.dir/source/field_trial.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libsyswrappters.dir/source/field_trial.cc.i"
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && /Applications/Xcode10.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers/source/field_trial.cc > CMakeFiles/libsyswrappters.dir/source/field_trial.cc.i

system_wrappers/CMakeFiles/libsyswrappters.dir/source/field_trial.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libsyswrappters.dir/source/field_trial.cc.s"
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && /Applications/Xcode10.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers/source/field_trial.cc -o CMakeFiles/libsyswrappters.dir/source/field_trial.cc.s

system_wrappers/CMakeFiles/libsyswrappters.dir/source/metrics.cc.o: system_wrappers/CMakeFiles/libsyswrappters.dir/flags.make
system_wrappers/CMakeFiles/libsyswrappters.dir/source/metrics.cc.o: system_wrappers/source/metrics.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huaweichang/Downloads/webrtc/ios/webrtc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object system_wrappers/CMakeFiles/libsyswrappters.dir/source/metrics.cc.o"
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && /Applications/Xcode10.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libsyswrappters.dir/source/metrics.cc.o -c /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers/source/metrics.cc

system_wrappers/CMakeFiles/libsyswrappters.dir/source/metrics.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libsyswrappters.dir/source/metrics.cc.i"
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && /Applications/Xcode10.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers/source/metrics.cc > CMakeFiles/libsyswrappters.dir/source/metrics.cc.i

system_wrappers/CMakeFiles/libsyswrappters.dir/source/metrics.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libsyswrappters.dir/source/metrics.cc.s"
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && /Applications/Xcode10.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers/source/metrics.cc -o CMakeFiles/libsyswrappters.dir/source/metrics.cc.s

# Object files for target libsyswrappters
libsyswrappters_OBJECTS = \
"CMakeFiles/libsyswrappters.dir/source/field_trial.cc.o" \
"CMakeFiles/libsyswrappters.dir/source/metrics.cc.o"

# External object files for target libsyswrappters
libsyswrappters_EXTERNAL_OBJECTS =

system_wrappers/libsys_wrappers.a: system_wrappers/CMakeFiles/libsyswrappters.dir/source/field_trial.cc.o
system_wrappers/libsys_wrappers.a: system_wrappers/CMakeFiles/libsyswrappters.dir/source/metrics.cc.o
system_wrappers/libsys_wrappers.a: system_wrappers/CMakeFiles/libsyswrappters.dir/build.make
system_wrappers/libsys_wrappers.a: system_wrappers/CMakeFiles/libsyswrappters.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huaweichang/Downloads/webrtc/ios/webrtc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libsys_wrappers.a"
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && $(CMAKE_COMMAND) -P CMakeFiles/libsyswrappters.dir/cmake_clean_target.cmake
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libsyswrappters.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
system_wrappers/CMakeFiles/libsyswrappters.dir/build: system_wrappers/libsys_wrappers.a
.PHONY : system_wrappers/CMakeFiles/libsyswrappters.dir/build

system_wrappers/CMakeFiles/libsyswrappters.dir/clean:
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers && $(CMAKE_COMMAND) -P CMakeFiles/libsyswrappters.dir/cmake_clean.cmake
.PHONY : system_wrappers/CMakeFiles/libsyswrappters.dir/clean

system_wrappers/CMakeFiles/libsyswrappters.dir/depend:
	cd /Users/huaweichang/Downloads/webrtc/ios/webrtc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huaweichang/Downloads/webrtc/ios/webrtc /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers /Users/huaweichang/Downloads/webrtc/ios/webrtc /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers /Users/huaweichang/Downloads/webrtc/ios/webrtc/system_wrappers/CMakeFiles/libsyswrappters.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : system_wrappers/CMakeFiles/libsyswrappters.dir/depend
