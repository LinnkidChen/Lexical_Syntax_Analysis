cmake_minimum_required(VERSION 3.20)

project (analysis_lib)
add_subdirectory(error)
add_subdirectory(statistics)

add_library(analysis_lib STATIC analysis.cpp)
target_include_directories(analysis_lib PUBLIC ${PROJECT_SOURCE_DIR})

target_link_libraries(analysis_lib PUBLIC error_lib)
target_link_libraries(analysis_lib PUBLIC sta_lib)

