# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\and_s\opengltest\OpenGLTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

# Include any dependencies generated for this target.
include src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\depend.make

# Include the progress variables for this target.
include src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\progress.make

# Include the compile flags for this target's objects.
include src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\flags.make

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\flags.make
src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj: ..\src\ThirdParty\GLEW\src\glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/ThirdParty/GLEW/CMakeFiles/GLEW.dir/src/glew.c.obj"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\GLEW.dir\src\glew.c.obj /FdCMakeFiles\GLEW.dir\GLEW.pdb /FS -c C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\glew.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLEW.dir/src/glew.c.i"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe > CMakeFiles\GLEW.dir\src\glew.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\glew.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLEW.dir/src/glew.c.s"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\GLEW.dir\src\glew.c.s /c C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\glew.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.requires:

.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.requires

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.provides: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.requires
	$(MAKE) -f src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\build.make /nologo -$(MAKEFLAGS) src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.provides.build
.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.provides

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.provides.build: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj


src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\flags.make
src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj: ..\src\ThirdParty\GLEW\src\glewinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/ThirdParty/GLEW/CMakeFiles/GLEW.dir/src/glewinfo.c.obj"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\GLEW.dir\src\glewinfo.c.obj /FdCMakeFiles\GLEW.dir\GLEW.pdb /FS -c C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\glewinfo.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLEW.dir/src/glewinfo.c.i"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe > CMakeFiles\GLEW.dir\src\glewinfo.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\glewinfo.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLEW.dir/src/glewinfo.c.s"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\GLEW.dir\src\glewinfo.c.s /c C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\glewinfo.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.requires:

.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.requires

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.provides: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.requires
	$(MAKE) -f src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\build.make /nologo -$(MAKEFLAGS) src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.provides.build
.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.provides

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.provides.build: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj


src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\flags.make
src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj: ..\src\ThirdParty\GLEW\src\visualinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/ThirdParty/GLEW/CMakeFiles/GLEW.dir/src/visualinfo.c.obj"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\GLEW.dir\src\visualinfo.c.obj /FdCMakeFiles\GLEW.dir\GLEW.pdb /FS -c C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\visualinfo.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLEW.dir/src/visualinfo.c.i"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe > CMakeFiles\GLEW.dir\src\visualinfo.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\visualinfo.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLEW.dir/src/visualinfo.c.s"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\GLEW.dir\src\visualinfo.c.s /c C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW\src\visualinfo.c
<<
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.requires:

.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.requires

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.provides: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.requires
	$(MAKE) -f src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\build.make /nologo -$(MAKEFLAGS) src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.provides.build
.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.provides

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.provides.build: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj


# Object files for target GLEW
GLEW_OBJECTS = \
"CMakeFiles\GLEW.dir\src\glew.c.obj" \
"CMakeFiles\GLEW.dir\src\glewinfo.c.obj" \
"CMakeFiles\GLEW.dir\src\visualinfo.c.obj"

# External object files for target GLEW
GLEW_EXTERNAL_OBJECTS =

src\ThirdParty\GLEW\GLEW.lib: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj
src\ThirdParty\GLEW\GLEW.lib: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj
src\ThirdParty\GLEW\GLEW.lib: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj
src\ThirdParty\GLEW\GLEW.lib: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\build.make
src\ThirdParty\GLEW\GLEW.lib: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library GLEW.lib"
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	$(CMAKE_COMMAND) -P CMakeFiles\GLEW.dir\cmake_clean_target.cmake
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\link.exe /lib /nologo /machine:x64 /out:GLEW.lib @CMakeFiles\GLEW.dir\objects1.rsp 
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug

# Rule to build all files generated by this target.
src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\build: src\ThirdParty\GLEW\GLEW.lib

.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\build

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\requires: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glew.c.obj.requires
src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\requires: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\glewinfo.c.obj.requires
src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\requires: src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\src\visualinfo.c.obj.requires

.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\requires

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\clean:
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW
	$(CMAKE_COMMAND) -P CMakeFiles\GLEW.dir\cmake_clean.cmake
	cd C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug
.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\clean

src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\and_s\opengltest\OpenGLTest C:\Users\and_s\opengltest\OpenGLTest\src\ThirdParty\GLEW C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW C:\Users\and_s\opengltest\OpenGLTest\cmake-build-debug\src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src\ThirdParty\GLEW\CMakeFiles\GLEW.dir\depend

