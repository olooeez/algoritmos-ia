class Node
  attr_reader :name, :neighbors, :costs

  def initialize(name)
    @name = name
    @neighbors = []
    @costs = {}  # Dicionário de custos
  end

  def add_neighbor(node, cost)
    @neighbors << node
    @costs[node] = cost
  end
end
