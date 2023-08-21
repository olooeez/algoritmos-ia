class Graph
  attr_reader :nodes

  def initialize
    @nodes = {}
  end

  def add_node(node)
    @nodes[node.name] = node
  end

  def find_path(start_name, target_name)
    raise NotImplementedError, 'Subclasses must implement this method'
  end
end
