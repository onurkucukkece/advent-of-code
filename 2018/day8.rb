class NodeParser
  attr_accessor :meta

  def initialize(opts = {})
    @meta = []
    @numbers = opts[:numbers].map(&:to_i)
  end
  
  def parse
    while @numbers.count > 0 do
      node, metadata_entry = @numbers[0], @numbers[1]
      @numbers.shift(2)
      metadata_entry.times do
        if node == 0
          @meta << @numbers.first
          @numbers.shift
        else
          @meta << @numbers.last
          @numbers.pop
        end
      end
    end
  end
end