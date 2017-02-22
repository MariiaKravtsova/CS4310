class Node
    attr_accessor :key, :left, :right

    def initialize(key: nil)
      @key = key
      @left = nil
      @right = nil
    end
end
