
#add_library(RapidJSON STATIC
#        ${CMAKE_CURRENT_SOURCE_DIR}
#        )

#set_target_properties(RapidJSON PROPERTIES LINKER_LANGUAGE CXX)

#target_include_directories(GLEW PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_library(RapidJSON INTERFACE)
target_include_directories(RapidJSON INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})