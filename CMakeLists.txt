cmake_minimum_required(VERSION 3.10)
project(RouteOptimization)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find SFML
find_package(SFML 3 COMPONENTS Graphics Window System REQUIRED)

# Include directories
include_directories(${CMAKE_SOURCE_DIR}/include)

# Source files
set(SOURCES
    src/main.cpp
    src/Graph.cpp
    src/Algorithms.cpp
    src/Visualization.cpp
    src/Application.cpp
)

# Header files
set(HEADERS
    include/Graph.h
    include/Algorithms.h
    include/Visualization.h
    include/Application.h
    include/Node.h
    include/Edge.h
)

# Create executable
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

# Link SFML libraries
target_link_libraries(${PROJECT_NAME} SFML::Graphics SFML::Window SFML::System)

# Copy resources to build directory
file(COPY ${CMAKE_SOURCE_DIR}/data DESTINATION ${CMAKE_BINARY_DIR})