cmake_minimum_required(VERSION 3.10)
project(prplgate)

set(CMAKE_CXX_STANDARD 14)

include(FindPkgConfig)
pkg_check_modules(PURPLE REQUIRED purple)
pkg_check_modules(GLIB_PKG REQUIRED glib-2.0)
find_package(ZLIB REQUIRED)
find_package(LibXml2 REQUIRED)


add_subdirectory(src)
