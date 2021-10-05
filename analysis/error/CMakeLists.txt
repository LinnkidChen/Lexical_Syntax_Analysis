cmake_minimum_required(VERSION 3.20)

project(error_lib)
add_library(error_lib STATIC error.cpp)
target_include_directories(error_lib PUBLIC 
        ${PROJECT_SOURCE_DIR})