function [distances, paths] = dijkstra(graph, start)
    num_nodes = size(graph, 1);
    distances = inf(1, num_nodes);
    distances(start) = 0;
    previous_nodes = zeros(1, num_nodes);
    paths = cell(1, num_nodes);

    unvisited = 1:num_nodes;

    while ~isempty(unvisited)
        [~, min_index] = min(distances(unvisited));
        smallest_node = unvisited(min_index);

        unvisited(min_index) = [];

        for neighbor_node = unvisited
            tentative_distance = distances(smallest_node) + graph(smallest_node, neighbor_node);

            if tentative_distance < distances(neighbor_node)
                distances(neighbor_node) = tentative_distance;
                previous_nodes(neighbor_node) = smallest_node;
            end
        end
    end

    for node = 1:num_nodes
        path = [];
        current_node = node;
        
        while current_node ~= 0
            path = [current_node, path];
            current_node = previous_nodes(current_node);
        end
        
        paths{node} = path;
    end
end



