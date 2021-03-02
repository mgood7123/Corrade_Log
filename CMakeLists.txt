cmake_minimum_required(VERSION 3.4.1)

project(Corrade_Log)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(Corrade_Log_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR}/include PARENT_SCOPE)

include_directories(include)

if(CMAKE_SYSTEM_NAME STREQUAL Emscripten)
    set(CORRADE_TARGET_EMSCRIPTEN 1)
    # It's meaningless to use dynamic libraries with Emscripten
    set(BUILD_STATIC ON)
elseif(UNIX)
    # Both APPLE and UNIX are defined on OSX
    if(APPLE)
        set(CORRADE_TARGET_APPLE 1)

        if(CMAKE_OSX_SYSROOT MATCHES "/iPhoneOS[0-9.]*\\.sdk")
            set(CORRADE_TARGET_IOS 1)
        elseif(CMAKE_OSX_SYSROOT MATCHES "/iPhoneSimulator[0-9.]*\\.sdk")
            set(CORRADE_TARGET_IOS 1)
            set(CORRADE_TARGET_IOS_SIMULATOR 1)
        endif()
    endif()

    # UNIX is also defined on Android
    if(CMAKE_SYSTEM_NAME STREQUAL Android)
        set(CORRADE_TARGET_ANDROID 1)
        # It's too inconvenient to manually load all shared libs using JNI
        set(BUILD_STATIC ON)
    endif()

    # Emscripten is Unix too, this selects only the other ones
    set(CORRADE_TARGET_UNIX 1)
elseif(WIN32)
    set(CORRADE_TARGET_WINDOWS 1)

    if(WINDOWS_PHONE OR WINDOWS_STORE)
        set(CORRADE_TARGET_WINDOWS_RT 1)
    endif()
endif()

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
