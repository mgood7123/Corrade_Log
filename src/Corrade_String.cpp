/*
    This file is part of Corrade.

    Copyright © 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016,
                2017, 2018, 2019, 2020 Vladimír Vondruš <mosra@centrum.cz>

    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the "Software"),
    to deal in the Software without restriction, including without limitation
    the rights to use, copy, modify, merge, publish, distribute, sublicense,
    and/or sell copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
    THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
    DEALINGS IN THE SOFTWARE.
*/

#include "Corrade_String.h"

#include <cctype>
#include <cstring>
#include <string>
#include <vector>
#include <algorithm>

#include "Corrade_GrowableArray.h"
#include "Corrade_StaticArray.h"
#include "Corrade_StringStl.h"

namespace Corrade { namespace Utility { namespace String {

namespace Implementation {

void ltrimInPlace(std::string& string, const Containers::ArrayView<const char> characters) {
    string.erase(0, string.find_first_not_of(characters, 0, characters.size()));
}

void rtrimInPlace(std::string& string, const Containers::ArrayView<const char> characters) {
    string.erase(string.find_last_not_of(characters, std::string::npos, characters.size())+1);
}

void trimInPlace(std::string& string, const Containers::ArrayView<const char> characters) {
    rtrimInPlace(string, characters);
    ltrimInPlace(string, characters);
}

std::string ltrim(std::string string, const Containers::ArrayView<const char> characters) {
    ltrimInPlace(string, characters);
    return string;
}

std::string rtrim(std::string string, const Containers::ArrayView<const char> characters) {
    rtrimInPlace(string, characters);
    return string;
}

std::string trim(std::string string, const Containers::ArrayView<const char> characters) {
    trimInPlace(string, characters);
    return string;
}

std::string join(const std::vector<std::string>& strings, const Containers::ArrayView<const char> delimiter) {
    /* Compute size of the resulting string, count also delimiters */
    std::size_t size = 0;
    for(const auto& s: strings) size += s.size() + delimiter.size();
    if(size) size -= delimiter.size();

    /* Reserve memory for the resulting string */
    std::string result;
    result.reserve(size);

    /* Join strings */
    for(const auto& s: strings) {
        result += s;
        if(result.size() != size) result.append(delimiter, delimiter.size());
    }

    return result;
}

std::string joinWithoutEmptyParts(const std::vector<std::string>& strings, const Containers::ArrayView<const char> delimiter) {
    /* Compute size of the resulting string, count also delimiters */
    std::size_t size = 0;
    for(const auto& s: strings) if(!s.empty()) size += s.size() + delimiter.size();
    if(size) size -= delimiter.size();

    /* Reserve memory for the resulting string */
    std::string result;
    result.reserve(size);

    /* Join strings */
    for(const auto& s: strings) {
        if(s.empty()) continue;

        result += s;
        if(result.size() != size) result.append(delimiter, delimiter.size());
    }

    return result;
}

bool beginsWith(Containers::ArrayView<const char> string, const Containers::ArrayView<const char> prefix) {
    if(string.size() < prefix.size()) return false;

    return std::strncmp(string, prefix, prefix.size()) == 0;
}

bool endsWith(Containers::ArrayView<const char> string, const Containers::ArrayView<const char> suffix) {
    if(string.size() < suffix.size()) return false;

    return std::strncmp(string + string.size() - suffix.size(), suffix, suffix.size()) == 0;
}

std::string stripPrefix(std::string string, const Containers::ArrayView<const char> prefix) {
    CORRADE_ASSERT(beginsWith({string.data(), string.size()}, prefix),
        "Utility::String::stripPrefix(): string doesn't begin with given prefix", {});
    string.erase(0, prefix.size());
    return string;
}

std::string stripSuffix(std::string string, const Containers::ArrayView<const char> suffix) {
    CORRADE_ASSERT(endsWith({string.data(), string.size()}, suffix),
        "Utility::String::stripSuffix(): string doesn't end with given suffix", {});
    string.erase(string.size() - suffix.size());
    return string;
}

std::string replaceFirst(std::string string, const Containers::ArrayView<const char> search, const Containers::ArrayView<const char> replace) {
    const std::size_t found = string.find(search, 0, search.size());
    if(found != std::string::npos)
        string.replace(found, search.size(), replace, replace.size());
    return string;
}

std::string replaceAll(std::string string, const Containers::ArrayView<const char> search, const Containers::ArrayView<const char> replace) {
    CORRADE_ASSERT(!search.empty(), "Utility::String::replaceAll(): empty search string would cause an infinite loop", {});
    std::size_t found = 0;
    while((found = string.find(search, found, search.size())) != std::string::npos) {
        string.replace(found, search.size(), replace, replace.size());
        found += replace.size();
    }
    return string;
}

}

namespace {
    using namespace Containers::Literals;
    constexpr Containers::StringView Whitespace = " \t\f\v\r\n"_s;
}

std::string ltrim(std::string string) { return Implementation::ltrim(std::move(string), Containers::ArrayView<const char>(Whitespace.data(), Whitespace.size())); }

std::string rtrim(std::string string) { return Implementation::rtrim(std::move(string), Containers::ArrayView<const char>(Whitespace.data(), Whitespace.size())); }

std::string trim(std::string string) { return Implementation::trim(std::move(string), Containers::ArrayView<const char>(Whitespace.data(), Whitespace.size())); }

void ltrimInPlace(std::string& string) { Implementation::ltrimInPlace(string, Containers::ArrayView<const char>(Whitespace.data(), Whitespace.size())); }

void rtrimInPlace(std::string& string) { Implementation::rtrimInPlace(string, Containers::ArrayView<const char>(Whitespace.data(), Whitespace.size())); }

void trimInPlace(std::string& string) { Implementation::trimInPlace(string, Containers::ArrayView<const char>(Whitespace.data(), Whitespace.size())); }

Containers::Array<Containers::StringView> split(const Containers::StringView string, const char delimiter) {
    Containers::Array<Containers::StringView> parts;
    const char* const end = string.end();
    const char* oldpos = string.begin();
    const char* pos;
    while(oldpos < end && (pos = static_cast<const char*>(std::memchr(oldpos, delimiter, end - oldpos)))) {
        arrayAppend(parts, string.slice(oldpos, pos));
        oldpos = pos + 1;
    }

    if(!string.isEmpty())
        arrayAppend(parts, string.suffix(oldpos));

    return parts;
}

Containers::Array<Containers::StringView> splitWithoutEmptyParts(const Containers::StringView string, const char delimiter) {
    Containers::Array<Containers::StringView> parts;
    const char* const end = string.end();
    const char* oldpos = string.begin();
    const char* pos;
    while(oldpos < end && (pos = static_cast<const char*>(std::memchr(oldpos, delimiter, end - oldpos)))) {
        if(pos != oldpos)
            arrayAppend(parts, string.slice(oldpos, pos));

        oldpos = pos + 1;
    }

    if(!string.isEmpty() && oldpos < end)
        arrayAppend(parts, string.suffix(oldpos));

    return parts;
}

Containers::Array<Containers::StringView> splitWithoutEmptyParts(const Containers::StringView string, const Containers::StringView delimiters) {
    Containers::Array<Containers::StringView> parts;
    const char* const sBegin = delimiters.begin();
    const char* const sEnd = delimiters.end();
    const char* const end = string.end();
    const char* oldpos = string.begin();
    const char* pos;

    while(oldpos < end && (pos = std::find_first_of(oldpos, end, sBegin, sEnd))) {
        if(pos != oldpos)
            arrayAppend(parts, string.slice(oldpos, pos));

        oldpos = pos + 1;
    }

    if(!string.isEmpty() && oldpos < end)
        arrayAppend(parts, string.suffix(oldpos));

    return parts;
}

Containers::Array<Containers::StringView> splitWithoutEmptyParts(const Containers::StringView string) {
    return splitWithoutEmptyParts(string, Whitespace);
}

std::vector<std::string> split(const std::string& string, const char delimiter) {
    /* IDGAF that this has one extra allocation due to the Array being copied
       to a std::vector, the owning std::string instances are much worse */
    Containers::Array<Containers::StringView> parts = split(Containers::StringView{string}, delimiter);
    return std::vector<std::string>{parts.begin(), parts.end()};
}

std::vector<std::string> splitWithoutEmptyParts(const std::string& string, const char delimiter) {
    /* IDGAF that this has one extra allocation due to the Array being copied
       to a std::vector, the owning std::string instances are much worse */
    Containers::Array<Containers::StringView> parts = splitWithoutEmptyParts(Containers::StringView{string}, delimiter);
    return std::vector<std::string>{parts.begin(), parts.end()};
}

std::vector<std::string> splitWithoutEmptyParts(const std::string& string, const std::string& delimiters) {
    /* IDGAF that this has one extra allocation due to the Array being copied
       to a std::vector, the owning std::string instances are much worse */
    Containers::Array<Containers::StringView> parts = splitWithoutEmptyParts(Containers::StringView{string}, Containers::StringView{delimiters});
    return std::vector<std::string>{parts.begin(), parts.end()};
}

std::vector<std::string> splitWithoutEmptyParts(const std::string& string) {
    /* IDGAF that this has one extra allocation due to the Array being copied
       to a std::vector, the owning std::string instances are much worse */
    Containers::Array<Containers::StringView> parts = splitWithoutEmptyParts(Containers::StringView{string});
    return std::vector<std::string>{parts.begin(), parts.end()};
}

namespace {

Containers::StaticArray<3, std::string> partitionInternal(const std::string& string, Containers::ArrayView<const char> separator) {
    const std::size_t pos = string.find(separator, 0, separator.size());
    return {
        string.substr(0, pos),
        pos == std::string::npos ? std::string{} : string.substr(pos, separator.size()),
        pos == std::string::npos ? std::string{} : string.substr(pos + separator.size())
    };
}

Containers::StaticArray<3, std::string> rpartitionInternal(const std::string& string, Containers::ArrayView<const char> separator) {
    const std::size_t pos = string.rfind(separator, std::string::npos, separator.size());
    return {
        pos == std::string::npos ? std::string{} : string.substr(0, pos),
        pos == std::string::npos ? std::string{} : string.substr(pos, separator.size()),
        pos == std::string::npos ? string.substr(0) : string.substr(pos + separator.size())
    };
}

}

Containers::StaticArray<3, std::string> partition(const std::string& string, char separator) {
    return partitionInternal(string, {&separator, 1});
}

Containers::StaticArray<3, std::string> partition(const std::string& string, const std::string& separator) {
    return partitionInternal(string, {separator.data(), separator.size()});
}

Containers::StaticArray<3, std::string> rpartition(const std::string& string, char separator) {
    return rpartitionInternal(string, {&separator, 1});
}

Containers::StaticArray<3, std::string> rpartition(const std::string& string, const std::string& separator) {
    return rpartitionInternal(string, {separator.data(), separator.size()});
}

std::string lowercase(std::string string) {
    std::transform(string.begin(), string.end(), string.begin(), static_cast<int (*)(int)>(std::tolower));
    return string;
}

std::string uppercase(std::string string) {
    std::transform(string.begin(), string.end(), string.begin(), static_cast<int (*)(int)>(std::toupper));
    return string;
}

}}}
