cmake_minimum_required(VERSION 3.20)

project(sta_lib)

add_library(sta_lib STATIC statistics.cpp)
target_include_directories(sta_lib PUBLIC 
        ${PROJECT_SOURCE_DIR})