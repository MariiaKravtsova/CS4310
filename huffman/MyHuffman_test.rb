require_relative 'MyHuffman.rb'
require_relative 'tree.rb'

h = MyHuffman.new
# h.count_frequencies("go go gophers")

hash = h.count_frequencies("abccc")
# hash = h.count_frequencies("cccccccaaa  idddddd")
htree = h.huffman(hash)
k = h.huffman({" " => 4})
# puts h.encode_string(k, "Miss")
puts h.encode_string(htree, "abc")
# outputs 0011
