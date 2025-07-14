#!/bin/bash

# Create build directory if it doesn't exist
mkdir -p build
cd build

# Configure with CMake
echo "Configuring project with CMake..."
cmake ..

# Build the project
echo "Building project..."
make -j$(sysctl -n hw.ncpu)

# Check if build succeeded
if [ $? -eq 0 ]; then
    echo "Build successful!"
    echo "To run the application: ./RouteOptimization"
else
    echo "Build failed. Please check the error messages above."
    exit 1
fi