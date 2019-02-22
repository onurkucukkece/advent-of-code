require 'spec_helper'

describe 'Node' do
  let(:nodes) { NodeParser.new numbers: File.read("#{File.dirname(__FILE__)}/test.txt").split(' ') }

  it 'should return node chain' do
    nodes.parse
    expect(nodes.meta.flatten.sum).to eq 138
  end
  
  it 'should return total of root meta entries' do
    expect(nodes.parse).to eq 66
  end
end