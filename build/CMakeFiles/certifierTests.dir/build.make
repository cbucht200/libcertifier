# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.11.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.11.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ahaque201/Github/Comast Opensource Github/libcertifier"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build"

# Include any dependencies generated for this target.
include CMakeFiles/certifierTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/certifierTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/certifierTests.dir/flags.make

CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.o: ../tests/easy_api_tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/easy_api_tests.c"

CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/easy_api_tests.c" > CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.i

CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/easy_api_tests.c" -o CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.s

CMakeFiles/certifierTests.dir/tests/tests.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/tests/tests.c.o: ../tests/tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/certifierTests.dir/tests/tests.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/tests/tests.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/tests.c"

CMakeFiles/certifierTests.dir/tests/tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/tests/tests.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/tests.c" > CMakeFiles/certifierTests.dir/tests/tests.c.i

CMakeFiles/certifierTests.dir/tests/tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/tests/tests.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/tests.c" -o CMakeFiles/certifierTests.dir/tests/tests.c.s

CMakeFiles/certifierTests.dir/src/base58.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/base58.c.o: ../src/base58.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/certifierTests.dir/src/base58.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/base58.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/base58.c"

CMakeFiles/certifierTests.dir/src/base58.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/base58.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/base58.c" > CMakeFiles/certifierTests.dir/src/base58.c.i

CMakeFiles/certifierTests.dir/src/base58.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/base58.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/base58.c" -o CMakeFiles/certifierTests.dir/src/base58.c.s

CMakeFiles/certifierTests.dir/src/base64.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/base64.c.o: ../src/base64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/certifierTests.dir/src/base64.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/base64.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/base64.c"

CMakeFiles/certifierTests.dir/src/base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/base64.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/base64.c" > CMakeFiles/certifierTests.dir/src/base64.c.i

CMakeFiles/certifierTests.dir/src/base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/base64.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/base64.c" -o CMakeFiles/certifierTests.dir/src/base64.c.s

CMakeFiles/certifierTests.dir/src/certifier.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/certifier.c.o: ../src/certifier.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/certifierTests.dir/src/certifier.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/certifier.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifier.c"

CMakeFiles/certifierTests.dir/src/certifier.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/certifier.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifier.c" > CMakeFiles/certifierTests.dir/src/certifier.c.i

CMakeFiles/certifierTests.dir/src/certifier.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/certifier.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifier.c" -o CMakeFiles/certifierTests.dir/src/certifier.c.s

CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.o: ../src/certifier_api_easy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifier_api_easy.c"

CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifier_api_easy.c" > CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.i

CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifier_api_easy.c" -o CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.s

CMakeFiles/certifierTests.dir/src/certifierclient.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/certifierclient.c.o: ../src/certifierclient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/certifierTests.dir/src/certifierclient.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/certifierclient.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifierclient.c"

CMakeFiles/certifierTests.dir/src/certifierclient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/certifierclient.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifierclient.c" > CMakeFiles/certifierTests.dir/src/certifierclient.c.i

CMakeFiles/certifierTests.dir/src/certifierclient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/certifierclient.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/certifierclient.c" -o CMakeFiles/certifierTests.dir/src/certifierclient.c.s

CMakeFiles/certifierTests.dir/src/error.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/error.c.o: ../src/error.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/certifierTests.dir/src/error.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/error.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/error.c"

CMakeFiles/certifierTests.dir/src/error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/error.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/error.c" > CMakeFiles/certifierTests.dir/src/error.c.i

CMakeFiles/certifierTests.dir/src/error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/error.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/error.c" -o CMakeFiles/certifierTests.dir/src/error.c.s

CMakeFiles/certifierTests.dir/src/httpdebug.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/httpdebug.c.o: ../src/httpdebug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/certifierTests.dir/src/httpdebug.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/httpdebug.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/httpdebug.c"

CMakeFiles/certifierTests.dir/src/httpdebug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/httpdebug.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/httpdebug.c" > CMakeFiles/certifierTests.dir/src/httpdebug.c.i

CMakeFiles/certifierTests.dir/src/httpdebug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/httpdebug.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/httpdebug.c" -o CMakeFiles/certifierTests.dir/src/httpdebug.c.s

CMakeFiles/certifierTests.dir/src/log.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/log.c.o: ../src/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/certifierTests.dir/src/log.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/log.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/log.c"

CMakeFiles/certifierTests.dir/src/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/log.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/log.c" > CMakeFiles/certifierTests.dir/src/log.c.i

CMakeFiles/certifierTests.dir/src/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/log.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/log.c" -o CMakeFiles/certifierTests.dir/src/log.c.s

CMakeFiles/certifierTests.dir/src/mbedtls.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/mbedtls.c.o: ../src/mbedtls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/certifierTests.dir/src/mbedtls.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/mbedtls.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/mbedtls.c"

CMakeFiles/certifierTests.dir/src/mbedtls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/mbedtls.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/mbedtls.c" > CMakeFiles/certifierTests.dir/src/mbedtls.c.i

CMakeFiles/certifierTests.dir/src/mbedtls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/mbedtls.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/mbedtls.c" -o CMakeFiles/certifierTests.dir/src/mbedtls.c.s

CMakeFiles/certifierTests.dir/src/openssl.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/openssl.c.o: ../src/openssl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/certifierTests.dir/src/openssl.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/openssl.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/openssl.c"

CMakeFiles/certifierTests.dir/src/openssl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/openssl.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/openssl.c" > CMakeFiles/certifierTests.dir/src/openssl.c.i

CMakeFiles/certifierTests.dir/src/openssl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/openssl.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/openssl.c" -o CMakeFiles/certifierTests.dir/src/openssl.c.s

CMakeFiles/certifierTests.dir/src/parson.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/parson.c.o: ../src/parson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/certifierTests.dir/src/parson.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/parson.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/parson.c"

CMakeFiles/certifierTests.dir/src/parson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/parson.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/parson.c" > CMakeFiles/certifierTests.dir/src/parson.c.i

CMakeFiles/certifierTests.dir/src/parson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/parson.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/parson.c" -o CMakeFiles/certifierTests.dir/src/parson.c.s

CMakeFiles/certifierTests.dir/src/property.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/property.c.o: ../src/property.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/certifierTests.dir/src/property.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/property.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/property.c"

CMakeFiles/certifierTests.dir/src/property.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/property.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/property.c" > CMakeFiles/certifierTests.dir/src/property.c.i

CMakeFiles/certifierTests.dir/src/property.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/property.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/property.c" -o CMakeFiles/certifierTests.dir/src/property.c.s

CMakeFiles/certifierTests.dir/src/security.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/security.c.o: ../src/security.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/certifierTests.dir/src/security.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/security.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/security.c"

CMakeFiles/certifierTests.dir/src/security.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/security.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/security.c" > CMakeFiles/certifierTests.dir/src/security.c.i

CMakeFiles/certifierTests.dir/src/security.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/security.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/security.c" -o CMakeFiles/certifierTests.dir/src/security.c.s

CMakeFiles/certifierTests.dir/src/system.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/system.c.o: ../src/system.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/certifierTests.dir/src/system.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/system.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/system.c"

CMakeFiles/certifierTests.dir/src/system.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/system.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/system.c" > CMakeFiles/certifierTests.dir/src/system.c.i

CMakeFiles/certifierTests.dir/src/system.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/system.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/system.c" -o CMakeFiles/certifierTests.dir/src/system.c.s

CMakeFiles/certifierTests.dir/src/timer.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/timer.c.o: ../src/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/certifierTests.dir/src/timer.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/timer.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/timer.c"

CMakeFiles/certifierTests.dir/src/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/timer.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/timer.c" > CMakeFiles/certifierTests.dir/src/timer.c.i

CMakeFiles/certifierTests.dir/src/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/timer.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/timer.c" -o CMakeFiles/certifierTests.dir/src/timer.c.s

CMakeFiles/certifierTests.dir/src/util.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/src/util.c.o: ../src/util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/certifierTests.dir/src/util.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/src/util.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/util.c"

CMakeFiles/certifierTests.dir/src/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/src/util.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/util.c" > CMakeFiles/certifierTests.dir/src/util.c.i

CMakeFiles/certifierTests.dir/src/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/src/util.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/src/util.c" -o CMakeFiles/certifierTests.dir/src/util.c.s

CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.o: CMakeFiles/certifierTests.dir/flags.make
CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.o: ../tests/Unity/src/unity.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.o   -c "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/Unity/src/unity.c"

CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/Unity/src/unity.c" > CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.i

CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/tests/Unity/src/unity.c" -o CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.s

# Object files for target certifierTests
certifierTests_OBJECTS = \
"CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.o" \
"CMakeFiles/certifierTests.dir/tests/tests.c.o" \
"CMakeFiles/certifierTests.dir/src/base58.c.o" \
"CMakeFiles/certifierTests.dir/src/base64.c.o" \
"CMakeFiles/certifierTests.dir/src/certifier.c.o" \
"CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.o" \
"CMakeFiles/certifierTests.dir/src/certifierclient.c.o" \
"CMakeFiles/certifierTests.dir/src/error.c.o" \
"CMakeFiles/certifierTests.dir/src/httpdebug.c.o" \
"CMakeFiles/certifierTests.dir/src/log.c.o" \
"CMakeFiles/certifierTests.dir/src/mbedtls.c.o" \
"CMakeFiles/certifierTests.dir/src/openssl.c.o" \
"CMakeFiles/certifierTests.dir/src/parson.c.o" \
"CMakeFiles/certifierTests.dir/src/property.c.o" \
"CMakeFiles/certifierTests.dir/src/security.c.o" \
"CMakeFiles/certifierTests.dir/src/system.c.o" \
"CMakeFiles/certifierTests.dir/src/timer.c.o" \
"CMakeFiles/certifierTests.dir/src/util.c.o" \
"CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.o"

# External object files for target certifierTests
certifierTests_EXTERNAL_OBJECTS =

certifierTests: CMakeFiles/certifierTests.dir/tests/easy_api_tests.c.o
certifierTests: CMakeFiles/certifierTests.dir/tests/tests.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/base58.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/base64.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/certifier.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/certifier_api_easy.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/certifierclient.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/error.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/httpdebug.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/log.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/mbedtls.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/openssl.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/parson.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/property.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/security.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/system.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/timer.c.o
certifierTests: CMakeFiles/certifierTests.dir/src/util.c.o
certifierTests: CMakeFiles/certifierTests.dir/tests/Unity/src/unity.c.o
certifierTests: CMakeFiles/certifierTests.dir/build.make
certifierTests: /usr/lib/libz.dylib
certifierTests: /usr/lib/libcurl.dylib
certifierTests: /usr/local/lib/libmbedtls.dylib
certifierTests: /usr/local/lib/libmbedx509.dylib
certifierTests: /usr/local/lib/libmbedcrypto.dylib
certifierTests: CMakeFiles/certifierTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_20) "Linking C executable certifierTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/certifierTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/certifierTests.dir/build: certifierTests

.PHONY : CMakeFiles/certifierTests.dir/build

CMakeFiles/certifierTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/certifierTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/certifierTests.dir/clean

CMakeFiles/certifierTests.dir/depend:
	cd "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ahaque201/Github/Comast Opensource Github/libcertifier" "/Users/ahaque201/Github/Comast Opensource Github/libcertifier" "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build" "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build" "/Users/ahaque201/Github/Comast Opensource Github/libcertifier/build/CMakeFiles/certifierTests.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/certifierTests.dir/depend

