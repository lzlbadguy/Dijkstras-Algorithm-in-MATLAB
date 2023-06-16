# Dijkstra's Algorithm in MATLAB

## Description
This repository contains a MATLAB implementation of Dijkstra's Algorithm. Dijkstra's Algorithm is a popular graph search algorithm used to determine the shortest paths from a single source node to all other nodes in a graph with non-negative edge weights.

The main script `dijkstra.m` takes as input a graph represented as an adjacency matrix and a start node, and it outputs the shortest path lengths and paths from the start node to all other nodes in the graph.

## Inputs

1. `graph`: A matrix where each element `graph(i,j)` represents the weight (distance) of the edge from node `i` to node `j`. If there is no edge between node `i` and `j`, then `graph(i,j) = Inf`.

2. `start`: An integer representing the starting node for the algorithm. Nodes in the graph are labeled starting from 1.

## Outputs

1. `distances`: A vector where each element `distances(i)` represents the shortest path length from the start node to node `i`.

2. `paths`: A cell array where each element `paths{i}` is a vector representing the shortest path from the start node to node `i`. Each path is represented as a sequence of node numbers.

## Usage
Run the `dijkstra.m` script after defining the adjacency matrix `graph` and the start node `start_node`. The distances and paths will be printed out to the MATLAB console.

Example:
```MATLAB
graph = [0 50 inf 40 25 10; 
         50 0 15  20 inf 25;
         inf 15 0 10 20 inf;
         40 20 10 0  10 25;
         25 inf 20 10 0 55;
         10 25 inf 25 55 0];
start_node = 1;
[distances, paths] = dijkstra(graph, start_node);
disp('Distances:');
disp(distances);
disp('Paths:');
disp(paths);
```

## Graph Representation

The adjacency matrix for the example used in the script is visualized in graph representation.pdf 


Here, each number represents a node in the graph and the number along the edge represents the weight (or distance) between the two connected nodes.

## Limitations
This script assumes that the graph is connected, and that all edge weights are non-negative. The script does not handle errors or edge cases beyond these assumptions.
