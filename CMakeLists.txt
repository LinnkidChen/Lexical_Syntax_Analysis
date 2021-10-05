cmake_minimum_required(VERSION 3.20)
add_subdirectory(analysis)
project(LSA)
project(${CMAKE_PROJECT_NAME} VERSION 1.0)
add_executable(${CMAKE_PROJECT_NAME} Main.cpp)

target_link_libraries(LSA PUBLIC analysis_lib)