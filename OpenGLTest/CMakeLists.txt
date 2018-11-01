cmake_minimum_required(VERSION 3.10)
project(OpenGLTest)

set(CMAKE_CXX_STANDARD 14)

# OpenGL
find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIRS})

add_subdirectory(ThirdParty/GLEW)
add_subdirectory(ThirdParty/SDL)
add_definitions(-DSDL_STATIC=1)


add_executable(${PROJECT_NAME} src/main.cpp)

set(ADDITIONAL_LIBS "")

if (MINGW)
    message("MINGW Compiler")
    set(ADDITIONAL_LIBS "${ADDITIONAL_LIBS}mingw32")
elseif(MSVC)
    message("Microsoft Visual Compiler")
    set(ADDITIONAL_LIBS "${ADDITIONAL_LIBS}glu32.lib gdi32.lib")
endif()

target_link_libraries(${PROJECT_NAME} ${OPENGL_gl_LIBRARY} ${ADDITIONAL_LIBS} GLEW SDL2main SDL2-static)

