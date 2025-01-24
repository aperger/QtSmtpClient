cmake_minimum_required(VERSION 3.16)

project(SmtpMime
  VERSION 2.0
  LANGUAGES C CXX)

option(BUILD_TESTS "builds tests" ON)
option(BUILD_DEMOS "builds demos" ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOUIC OFF)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC OFF)

find_package(QT NAMES Qt6 COMPONENTS Core Network REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Network REQUIRED)

set(LIBRARY_TARGET_NAME ${PROJECT_NAME})

message(USING Qt${QT_VERSION_MAJOR})

set(CMAKE_SKIP_BUILD_RPATH FALSE)
#set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)   # note: this breaks the demos
set(CMAKE_INSTALL_RPATH $ORIGIN)

add_subdirectory(src)

if (BUILD_TESTS)
  add_subdirectory(test)
endif()
if (BUILD_DEMOS)
  add_subdirectory(demos)
endif()
