# Corrade_Log

```
Matthews-MacBook-Pro:Log smallville7123$ make rebuild_debug
make clean_debug
rm -rf debug_BUILD debug_EXECUTABLE
make debug
mkdir debug_BUILD
mkdir debug_EXECUTABLE
cd debug_BUILD ; mkdir EXECUTABLES; cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS_DEBUG="-g3 -O0" .. ; make && if test -e EXECUTABLES ; then cd EXECUTABLES; for file in * ; do mv -v $file ../../debug_EXECUTABLE/$FILE ; done ; cd ..; rmdir EXECUTABLES; fi
-- The C compiler identification is AppleClang 12.0.0.12000032
-- The CXX compiler identification is AppleClang 12.0.0.12000032
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
CMake Warning (dev) at CMakeLists.txt:8 (set):
  Cannot set "Corrade_Log_INCLUDE": current scope has no parent.
This warning is for project developers.  Use -Wno-dev to suppress it.

-- Configuring done
-- Generating done
-- Build files have been written to: /Users/smallville7123/Desktop/CircularBuffer/app/src/main/cpp/CircularBuffer/Corrade_Log/Log/debug_BUILD
Scanning dependencies of target Corrade_Log
[ 20%] Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_AndroidLogStreamBuffer.cpp.o
[ 40%] Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_Debug.cpp.o
[ 60%] Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_String.cpp.o
[ 80%] Building CXX object CMakeFiles/Corrade_Log.dir/src/Corrade_StringView.cpp.o
[100%] Linking CXX shared library libCorrade_Log.dylib
Undefined symbols for architecture x86_64:
  "Corrade::Containers::String::data()", referenced from:
      Corrade::Containers::BasicStringView<char>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
  "Corrade::Containers::String::data() const", referenced from:
      void Corrade::Utility::(anonymous namespace)::toStream<Corrade::Containers::String>(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, Corrade::Containers::String const&) in Corrade_Debug.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView<char const, void>(Corrade::Containers::String const&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView<char const, void>(Corrade::Containers::String const&) in Corrade_StringView.cpp.o
  "Corrade::Containers::String::size() const", referenced from:
      void Corrade::Utility::(anonymous namespace)::toStream<Corrade::Containers::String>(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, Corrade::Containers::String const&) in Corrade_Debug.cpp.o
      Corrade::Containers::BasicStringView<char>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView(Corrade::Containers::String&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView<char const, void>(Corrade::Containers::String const&) in Corrade_StringView.cpp.o
      Corrade::Containers::BasicStringView<char const>::BasicStringView<char const, void>(Corrade::Containers::String const&) in Corrade_StringView.cpp.o
      ...
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make[4]: *** [libCorrade_Log.dylib] Error 1
make[3]: *** [CMakeFiles/Corrade_Log.dir/all] Error 2
make[2]: *** [all] Error 2
make[1]: *** [build_debug] Error 2
make: *** [rebuild_debug] Error 2
Matthews-MacBook-Pro:Log smallville7123$


Corrade_StringView.cpp:26 #include "Corrade_StringView.h"
Corrade_StringView.h:298 constexpr T* data() const { return _data; }
```