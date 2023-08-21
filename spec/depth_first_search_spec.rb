require_relative '../lib/node'
require_relative '../lib/depth_first_search'

RSpec.describe DepthFirstSearch do
  let(:graph) { DepthFirstSearch.new }
  let(:node_a) { Node.new('A') }
  let(:node_b) { Node.new('B') }

  before do
    graph.add_node(node_a)
    graph.add_node(node_b)
  end

  it 'can find a path using Depth First Search' do
    node_a.add_neighbor(node_b, 3)
    expect { graph.find_path(node_a.name, node_b.name) }.to output("A -> (3) B (Total Cost: 3)\n").to_stdout
  end
end
