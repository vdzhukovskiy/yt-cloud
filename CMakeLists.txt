cmake_minimum_required(VERSION 3.5)

project(yt-cloud VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Gui)

set(PROJECT_SOURCES
   src/main.cpp
)

qt_add_executable(${PROJECT_NAME}
   ${PROJECT_SOURCES}
)

set(QML_FILES
   qmls/main.qml
   qmls/Constants.qml
)

qt_add_qml_module(${PROJECT_NAME}
   URI qmls
   VERSION 1.0
   QML_FILES ${QML_FILES}
   RESOURCES qmls/qmldir
   RESOURCE_PREFIX "/"
)

target_link_libraries(${PROJECT_NAME}
   PRIVATE
   Qt6::Gui
   Qt6::Quick
)
