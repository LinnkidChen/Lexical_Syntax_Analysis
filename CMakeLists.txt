cmake_minimum_required(VERSION 3.20)
set(CMAKE_C_FLAGS_DEBUG "-g -DDEBUG")
set(CMAKE_CXX_FLAGS_DEBUG "-g -DDEBUG")
add_subdirectory(analysis)
project(LSA)
project(${CMAKE_PROJECT_NAME} VERSION 1.0)
add_executable(${CMAKE_PROJECT_NAME} Main.cpp)

target_link_libraries(LSA PUBLIC analysis_lib)