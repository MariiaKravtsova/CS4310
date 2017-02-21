require 'rubygems'
require 'algorithms'
require_relative 'tree.rb'
include Containers

class MyHuffman
  def initialize

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
    min_heap = MinHeap.new
    c.each do |letter, frequency|
      tree = BinarySearchTree.new
      tree.insert(letter)
      min_heap.push(frequency, tree)
    end
    while min_heap.size > 1 do
      tree = BinarySearchTree.new
      f1 = min_heap.min
      t1 = min_heap.min!
      f2 = min_heap.min
      t2 = min_heap.min!
      tree.insert(t1.root.key + t2.root.key)
      tree.insert(t1.root.key)
      tree.insert(t2.root.key)
      puts
      min_heap.push(f1+f2, tree)
    end
  end

  def encode_string(t, s)

  end
end
