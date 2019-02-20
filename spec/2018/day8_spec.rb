require 'spec_helper'

describe 'Node' do
  it 'should return node chain' do
    numbers = File.read("#{File.dirname(__FILE__)}/test8.txt").split(' ')
    nodes = NodeParser.new(numbers: numbers)
    nodes.parse
    expect(nodes.meta.flatten.sum).to eq 138
  end
end