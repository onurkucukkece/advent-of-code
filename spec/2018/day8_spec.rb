require 'spec_helper'

describe 'Node' do
  it 'should return node chain' do
    numbers = File.read("#{File.dirname(__FILE__)}/test.txt").split(' ')
    nodes = NodeParser.new(numbers: numbers)
    nodes.parse
    puts nodes.meta.sum
    expect(nodes.meta.sum).to eq 138
  end
end