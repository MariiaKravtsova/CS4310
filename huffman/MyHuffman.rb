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
      tree = Node.new(key: letter)
      min_heap.push(frequency, tree)
    end
    while min_heap.size > 1 do
      tree = Node.new
      f1 = min_heap.next_key
      t1 = min_heap.min!
      f2 = min_heap.next_key
      t2 = min_heap.min!
      tree.left = t1
      tree.right = t2
      min_heap.push(f1+f2, tree)
    end
    return min_heap.min!
  end

  def traversal(t, s="")
    if t == nil
      return
    end
    if t.key != nil
      return t.key
    end
    s = s + '0'
    traversal(t.left, s)
    puts s
    s = s.delete('0') + '1'
    puts s
    traversal(t.right, s)
  end

  def encode_string(t, s)
    code = Hash.new()
    puts code
  end
end
