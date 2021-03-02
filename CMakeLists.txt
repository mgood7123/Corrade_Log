cmake_minimum_required(VERSION 3.4.1)

project(Corrade_Log)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(Corrade_Log_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR}/include PARENT_SCOPE)

if(NOT COMMAND testBuilder_build)
    add_subdirectory(testBuilder)
    testBuilder_set_current_working_directory_to_default_binary_directory()
endif()

include_directories(include)

testBuilder_add_source(Corrade_Log src/Corrade_AndroidLogStreamBuffer.cpp)
testBuilder_add_source(Corrade_Log src/Corrade_Debug.cpp)
testBuilder_add_source(Corrade_Log src/Corrade_String.cpp)
testBuilder_add_source(Corrade_Log src/Corrade_StringView.cpp)

if (ANDROID)
    testBuilder_add_library(Corrade_Log android)
    testBuilder_add_library(Corrade_Log log)
endif()

testBuilder_build_shared_library(Corrade_Log)