cmake_minimum_required(VERSION 3.4.1)

project(Corrade_Log)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(Corrade_Log_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR}/include PARENT_SCOPE)

include_directories(include)

add_library(Corrade_Log SHARED
        src/Corrade_AndroidLogStreamBuffer.cpp
        src/Corrade_Debug.cpp
        src/Corrade_String.cpp
        src/Corrade_StringView.cpp
)

if (ANDROID)
    target_link_libraries(Corrade_Log android log)
else()
    target_link_libraries(Corrade_Log)
endif()
