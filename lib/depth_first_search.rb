require 'set'

require_relative 'graph'

class DepthFirstSearch < Graph
  def find_path(start_name, target_name)
    start_node = @nodes[start_name]
    target_node = @nodes[target_name]
    visited = Set.new
    stack = []
    stack << [start_node, [start_node]]

    until stack.empty?
      current_node, path = stack.pop
      visited.add(current_node)

      if current_node == target_node
        print_path_with_cost(path)
        return
      end

      current_node.neighbors.each do |neighbor|
        next if visited.include?(neighbor)

        new_path = path + [neighbor]
        stack << [neighbor, new_path]
      end
    end

    puts "Caminho não encontrado entre #{start_name} e #{target_name}."
  end

  def print_path_with_cost(path)
    total_cost = 0
    path.each_with_index do |node, index|
      break if index == path.size - 1

      next_node = path[index + 1]
      cost = node.costs[next_node]
      total_cost += cost
      print "#{node.name} -> (#{cost}) "
    end

    puts "#{path.last.name} (Total Cost: #{total_cost})"
  end
end
