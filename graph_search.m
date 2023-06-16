clc;
clear;
% An adjacency matrix representation of a graph
% Use inf for nodes that are not directly connected
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

