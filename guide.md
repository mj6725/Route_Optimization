
PROJECT: Visual Route Optimization System in C++
Create a complete C++ project that implements a route optimization system with visual representation. The system should find optimal paths between locations using multiple algorithms and provide real-time visualization of the pathfinding process.
Core Requirements:
1. Graph Representation

Implement a weighted, directed graph structure to represent road networks
Support for at least 50-100 nodes (intersections/locations)
Edge weights represent distance, time, or cost
Ability to dynamically add/remove nodes and edges
Store graph data in an efficient adjacency list or matrix

2. Algorithms to Implement

Dijkstra's Algorithm: Single-source shortest path
A Algorithm*: With Manhattan and Euclidean heuristics
Bellman-Ford Algorithm: Handle negative edge weights
Floyd-Warshall Algorithm: All-pairs shortest path
Bidirectional Search: Optimize for single pair queries
Include algorithm comparison mode showing performance differences

3. Visualization Requirements
Use SFML (Simple and Fast Multimedia Library) or SDL2 for graphics:

Display graph as a 2D map with nodes and edges
Animate algorithm execution step-by-step
Color coding:

Unvisited nodes (white)
Currently exploring (yellow)
Visited nodes (light blue)
Final path (green)
Start node (red)
End node (purple)


Show edge weights as labels
Display current distance/cost for each node during execution
Speed control for animation (pause, play, step-through)

4. Features

Interactive Mode:

Click to select start and end nodes
Add/remove nodes and edges via GUI
Adjust edge weights dynamically
Save/load graph configurations


Preset Maps:

Grid-based city layout
Random connected graph
Real-world inspired layouts (simplified)


Performance Metrics:

Execution time for each algorithm
Nodes explored count
Memory usage
Path length comparison


Obstacles and Constraints:

Road closures (removed edges)
One-way streets (directed edges)
Traffic simulation (dynamic weight changes)
Multiple waypoints (visit specific nodes in order)



5. Project Structure
