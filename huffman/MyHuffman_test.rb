require_relative 'MyHuffman.rb'
require_relative 'tree.rb'

h = MyHuffman.new
# h.count_frequencies("go go gophers")

hash = h.count_frequencies("Mississippi River")
# hash = h.count_frequencies("cccccccaaa  idddddd")
htree = h.huffman(hash)
h.traversal(htree)
