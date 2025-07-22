cmake_minimum_required(VERSION 3.5)

project(yt-cloud VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core Widgets)

set(PROJECT_SOURCES
   src/main.cpp
   src/main_window.h
   src/main_window.cpp
   src/main_window.ui
)

add_executable(${PROJECT_NAME}
   ${PROJECT_SOURCES}
)

target_link_libraries(${PROJECT_NAME}
   PRIVATE
   Qt6::Core
   Qt6::Widgets
)
