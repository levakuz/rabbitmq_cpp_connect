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
CMAKE_COMMAND = /home/levakuz/.local/lib/python2.7/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/levakuz/.local/lib/python2.7/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/levakuz/rabbitmq_cpp_connect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/levakuz/rabbitmq_cpp_connect

# Include any dependencies generated for this target.
include CMakeFiles/send_test_message.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/send_test_message.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/send_test_message.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/send_test_message.dir/flags.make

CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o: CMakeFiles/send_test_message.dir/flags.make
CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o: src/send_test_message.cpp
CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o: CMakeFiles/send_test_message.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/levakuz/rabbitmq_cpp_connect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o -MF CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o.d -o CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o -c /home/levakuz/rabbitmq_cpp_connect/src/send_test_message.cpp

CMakeFiles/send_test_message.dir/src/send_test_message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/send_test_message.dir/src/send_test_message.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/levakuz/rabbitmq_cpp_connect/src/send_test_message.cpp > CMakeFiles/send_test_message.dir/src/send_test_message.cpp.i

CMakeFiles/send_test_message.dir/src/send_test_message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/send_test_message.dir/src/send_test_message.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/levakuz/rabbitmq_cpp_connect/src/send_test_message.cpp -o CMakeFiles/send_test_message.dir/src/send_test_message.cpp.s

# Object files for target send_test_message
send_test_message_OBJECTS = \
"CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o"

# External object files for target send_test_message
send_test_message_EXTERNAL_OBJECTS =

send_test_message: CMakeFiles/send_test_message.dir/src/send_test_message.cpp.o
send_test_message: CMakeFiles/send_test_message.dir/build.make
send_test_message: libamqpcpp-static.a
send_test_message: libamqpcpp.so
send_test_message: libamqpcpp-static.a
send_test_message: /usr/lib/x86_64-linux-gnu/libssl.so
send_test_message: /usr/lib/x86_64-linux-gnu/libcrypto.so
send_test_message: CMakeFiles/send_test_message.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/levakuz/rabbitmq_cpp_connect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable send_test_message"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/send_test_message.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/send_test_message.dir/build: send_test_message
.PHONY : CMakeFiles/send_test_message.dir/build

CMakeFiles/send_test_message.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/send_test_message.dir/cmake_clean.cmake
.PHONY : CMakeFiles/send_test_message.dir/clean

CMakeFiles/send_test_message.dir/depend:
	cd /home/levakuz/rabbitmq_cpp_connect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/levakuz/rabbitmq_cpp_connect /home/levakuz/rabbitmq_cpp_connect /home/levakuz/rabbitmq_cpp_connect /home/levakuz/rabbitmq_cpp_connect /home/levakuz/rabbitmq_cpp_connect/CMakeFiles/send_test_message.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/send_test_message.dir/depend

