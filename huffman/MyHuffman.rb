require 'rubygems'
require 'algorithms'

class MyHuffman
  def initialize
    # min_heap = Containers::MinHeap.new
    # tree = Algorithms::Search.binary_search.new
  end

  def count_frequencies(s)
    frequencies = Hash.new
    count = 0
    s = s.downcase
    if s.empty?
      return -1
    else
      s.each_char do |c|
        count = s.count c
        frequencies[c] = count
      end
      return frequencies
    end
  end

  def huffman(c)

  end

  def encode_string(t, s)

  end
end
