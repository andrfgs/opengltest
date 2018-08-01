set (GLEW_DIR ${CMAKE_CURRENT_SOURCE_DIR})

add_library(GLEW STATIC
        src/glew.c
        src/glewinfo.c
        src/visualinfo.c
        )

if (WIN32)
    add_definitions(-DGLEW_STATIC)
    list (APPEND GLEW_SRC_FILES ${GLEW_DIR}/build/glew.rc)
endif()

if (MSVC)
    # add options from visual studio project
    target_compile_definitions (GLEW PRIVATE "GLEW_STATIC;VC_EXTRALEAN")
    # kill security checks which are dependent on stdlib
    target_compile_options (GLEW PRIVATE -GS-)
    # remove stdlib dependency
    string(REGEX REPLACE "/RTC(su|[1su])" "" CMAKE_C_FLAGS_DEBUG ${CMAKE_C_FLAGS_DEBUG})
elseif (WIN32 AND ((CMAKE_C_COMPILER_ID MATCHES "GNU") OR (CMAKE_C_COMPILER_ID MATCHES "Clang")))
    # remove stdlib dependency on windows with GCC and Clang (for similar reasons
    # as to MSVC - to allow it to be used with any Windows compiler)
    target_compile_options (GLEW PRIVATE -fno-builtin -fno-stack-protector)
endif ()

target_include_directories(GLEW PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)