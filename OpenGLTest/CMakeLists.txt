cmake_minimum_required(VERSION 3.10)
project(OpenGLTest)

set(CMAKE_CXX_STANDARD 14)

# OpenGL
find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIRS})

add_subdirectory(src/ThirdParty/GLEW)
add_subdirectory(src/ThirdParty/SDL)
add_subdirectory(src/ThirdParty/rapidjson)

add_subdirectory(src/Engine/Math)

#Link SDL statically
add_definitions(-DSDL_STATIC=1)
add_definitions(-DSDL_SHARED=0)
add_definitions(-DSDL_TEST=0)

add_definitions(-DLIBC=ON)

# Enable Win32 GUI App on Windows
set(EXECUTABLE_ARG "")
if (WIN32)
    set(EXECUTABLE_ARG "${EXECUTABLE_ARG}WIN32")
endif()
add_executable(${PROJECT_NAME} ${EXECUTABLE_ARG} src/Engine/Core/Main.cpp)

#Compiler specific libs
set(ADDITIONAL_LIBS "")
if (MINGW)
    message("MINGW Compiler")
    set(ADDITIONAL_LIBS "${ADDITIONAL_LIBS}mingw32")
elseif(MSVC)
    message("Microsoft Visual Compiler")
    set(ADDITIONAL_LIBS "${ADDITIONAL_LIBS}glu32.lib")
endif()

target_link_libraries(${PROJECT_NAME} ${OPENGL_gl_LIBRARY} ${ADDITIONAL_LIBS} GLEW SDL2main SDL2-static RapidJSON)

# Include directories
target_include_directories(OpenGLTest PUBLIC src)