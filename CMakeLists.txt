cmake_minimum_required(VERSION 3.20)

project(calculator)

set(SOURCE_EXE main.cpp)

set(SOURCE_LIB calculator.cpp)

add_library(libcalculator STATIC ${SOURCE_LIB})

add_executable(calculator ${SOURCE_EXE})

target_link_libraries(calculator libcalculator)
