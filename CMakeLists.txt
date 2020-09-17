cmake_minimum_required(VERSION 3.16)
project(prplgate)

set(CMAKE_CXX_STANDARD 14)

include(FindPkgConfig)
pkg_check_modules(PURPLE REQUIRED purple)
find_package(ZLIB REQUIRED)
find_package(LibXml2 REQUIRED)


add_subdirectory(src)