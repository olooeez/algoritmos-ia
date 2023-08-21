require_relative '../lib/node'

RSpec.describe Node do
  let(:node_a) { Node.new('A') }
  let(:node_b) { Node.new('B') }

  it 'has a name' do
    expect(node_a.name).to eq('A')
  end

  it 'can add neighbors and associated costs' do
    node_a.add_neighbor(node_b, 3)
    expect(node_a.neighbors).to include(node_b)
    expect(node_a.costs[node_b]).to eq(3)
  end
end
