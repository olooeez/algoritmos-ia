require_relative '../lib/depth_first_search'
require_relative '../lib/node'

# Criar os nós
node_a = Node.new('A')
node_b = Node.new('B')
node_c = Node.new('C')
node_d = Node.new('D')
node_e = Node.new('E')
node_f = Node.new('F')
node_g = Node.new('G')
node_h = Node.new('H')

# Adicionar vizinhos aos nós com custos
node_a.add_neighbor(node_b, 1)
node_a.add_neighbor(node_d, 3)
node_b.add_neighbor(node_c, 2)
node_b.add_neighbor(node_f, 1)
node_c.add_neighbor(node_g, 1)
node_c.add_neighbor(node_e, 2)
node_d.add_neighbor(node_f, 2)
node_e.add_neighbor(node_f, 2)
node_e.add_neighbor(node_b, 2)
node_f.add_neighbor(node_a, 1)
node_g.add_neighbor(node_h, 3)
node_g.add_neighbor(node_e, 3)
node_h.add_neighbor(node_a, 4)

# Criar o grafo
graph = DepthFirstSearch.new
graph.add_node(node_a)
graph.add_node(node_b)
graph.add_node(node_c)
graph.add_node(node_d)
graph.add_node(node_e)
graph.add_node(node_f)
graph.add_node(node_g)
graph.add_node(node_h)

# Encontrar caminho de 'A' para 'F'
graph.find_path('A', 'H')
