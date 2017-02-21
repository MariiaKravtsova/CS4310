require_relative 'MyHuffman.rb'
require_relative 'tree.rb'

t = BinarySearchTree.new
h = MyHuffman.new
# h.count_frequencies("go go gophers")


puts t.inspect

hash = h.count_frequencies("Mississippi River")
puts h.huffman(hash)
