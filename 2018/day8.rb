class NodeParser
  attr_accessor :meta

  def initialize(opts = {})
    @meta = []
    @numbers = opts[:numbers].map(&:to_i)
  end
  
  def parse
    node_values = []
    node, meta_entry = @numbers[0], @numbers[1]
    @numbers.shift(2)
    node.times do
      node_values << parse if meta_entry > 0
    end
    metas = @numbers[0..(meta_entry - 1)]
    @meta << metas
    @numbers.shift(meta_entry)
    return metas.reject{ |m| m > node }.map{ |m| node_values[m-1] }.sum if node > 0
    metas.sum
  end
end
