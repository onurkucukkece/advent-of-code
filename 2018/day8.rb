class NodeParser
  attr_accessor :meta

  def initialize(opts = {})
    @meta = []
    @numbers = opts[:numbers].map(&:to_i)
  end
  
  def parse
    node, meta_entry = @numbers[0], @numbers[1]
    @numbers.shift(2)
    node.times do
      parse if metadata_entry > 0
    end
    @meta << @numbers[0..(meta_entry - 1)]
    @numbers.shift(meta_entry)
  end
end