require 'rubygems'
require 'algorithms'
require_relative 'tree.rb'
include Containers

class MyHuffman

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

  def traversal(t, s="", code={})
    if t == nil
      return
    end
    if t.key != nil
      code[t.key] = s
      return code
    end
    s = s + '0'
    code[t.key] = traversal(t.left, s, code)
    s = s.delete('0') + '1'
    code[t.key] = traversal(t.right, s, code)
    code.delete(nil)
    return code
  end

  def encode_string(t, s)
    s = s.downcase
    encode = ""
    code = traversal(t)
    s.each_char do |c|
      if code.key?(c)
        encode.concat(code[c])
      end
    end
    if encode.empty?
      return -1
    else
      return encode
    end
  end
end
