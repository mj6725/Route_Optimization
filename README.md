# Route Optimization Visualizer

A complete C++ implementation of a route optimization system with real-time visualization using SFML. The system demonstrates multiple pathfinding algorithms on weighted graphs with interactive features.

## Features

### Algorithms Implemented
- **Dijkstra's Algorithm**: Single-source shortest path
- **A* Algorithm**: Optimized pathfinding with heuristic functions
- **Bellman-Ford Algorithm**: Handles negative edge weights
- **Floyd-Warshall Algorithm**: All-pairs shortest path
- **Bidirectional Search**: Optimized single-pair pathfinding

### Visualization Features
- Real-time algorithm animation with step-by-step execution
- Color-coded nodes showing algorithm progress:
  - White: Unvisited nodes
  - Yellow: Currently exploring
  - Light Blue: Visited nodes
  - Green: Final shortest path
  - Red: Start node
  - Purple: End node
- Interactive node selection
- Edge weight display
- Performance metrics display

### Interactive Controls
- **Mouse Click**: Select start and end nodes
- **Number Keys 1-5**: Run different algorithms
- **Space**: Pause/Resume animation
- **S**: Step mode for debugging
- **R**: Reset graph
- **W**: Toggle weight display
- **L**: Toggle node labels
- **G**: Generate grid layout
- **C**: Generate circular layout
- **N**: Generate random layout
- **A**: Compare all algorithms
- **Up/Down Arrows**: Adjust animation speed

## Building the Project

### Prerequisites
- C++17 compatible compiler
- CMake 3.10 or higher
- SFML 2.5 or higher

### Build Instructions

```bash
# Create build directory
mkdir build
cd build

# Configure with CMake
cmake ..

# Build the project
make

# Run the application
./RouteOptimization
```

### Installing SFML

#### macOS
```bash
brew install sfml
```

#### Ubuntu/Debian
```bash
sudo apt-get install libsfml-dev
```

#### Windows
Download SFML from https://www.sfml-dev.org/download.php and follow the installation instructions.

## Project Structure

```
Route Optimization/
├── CMakeLists.txt          # Build configuration
├── README.md               # This file
├── include/                # Header files
│   ├── Node.h             # Node data structure
│   ├── Edge.h             # Edge data structure
│   ├── Graph.h            # Graph implementation
│   ├── Algorithms.h       # Pathfinding algorithms
│   ├── Visualization.h    # Rendering system
│   └── Application.h      # Main application controller
├── src/                    # Source files
│   ├── main.cpp           # Entry point
│   ├── Graph.cpp          # Graph implementation
│   ├── Algorithms.cpp     # Algorithm implementations
│   ├── Visualization.cpp  # Rendering implementation
│   └── Application.cpp    # Application logic
└── data/                   # Resources (fonts, saved graphs)
```

## Usage Example

1. Run the application
2. Click on two nodes to select start (red) and end (purple) points
3. Press a number key (1-5) to run an algorithm
4. Watch the algorithm explore the graph and find the shortest path
5. Press 'A' to compare all algorithms on the same route

## Algorithm Complexity

| Algorithm | Time Complexity | Space Complexity | Notes |
|-----------|----------------|------------------|--------|
| Dijkstra | O((V + E) log V) | O(V) | Best for non-negative weights |
| A* | O((V + E) log V) | O(V) | Faster than Dijkstra with good heuristic |
| Bellman-Ford | O(VE) | O(V) | Handles negative weights |
| Floyd-Warshall | O(V³) | O(V²) | All-pairs shortest paths |
| Bidirectional | O((V + E) log V) | O(V) | Faster for single-pair queries |

## Future Enhancements

- Add more graph layouts (tree, planar, etc.)
- Implement additional algorithms (Johnson's, D*, etc.)
- Add obstacle/traffic simulation
- Support for reading real map data
- Export path results to file
- Multi-threading for large graphs