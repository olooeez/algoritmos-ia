require_relative '../lib/node'
require_relative '../lib/graph'

RSpec.describe Graph do
  let(:graph) { Graph.new }
  let(:node_a) { Node.new('A') }
  let(:node_b) { Node.new('B') }

  before do
    graph.add_node(node_a)
    graph.add_node(node_b)
  end

  it 'can add nodes' do
    expect(graph.nodes).to include('A' => node_a, 'B' => node_b)
  end

  it 'raises NotImplementedError for find_path' do
    expect { graph.find_path('A', 'B') }.to raise_error(NotImplementedError, 'Subclasses must implement this method')
  end
end
