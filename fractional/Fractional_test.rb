require_relative 'Knapsack.rb'
require_relative 'Fractional.rb'

f = Fractional.new

# one = Knapsack.new
# one.benefit = 12
# one.weight = 4

# two = Knapsack.new
# two.benefit = 32
# two.weight = 8

# three = Knapsack.new
# three.benefit = 40
# three.weight = 2

# four = Knapsack.new
# four.benefit = 30
# four.weight = 6

# five = Knapsack.new
# five.benefit = 50
# five.weight = 1

# set = [one, two, three, four, five]
# f.fractional_knapsack(set, 100)

# file = File.open('output-push1.csv', 'w')

# maxheap = MaxHeap.new
# (1..30).each do |size|
#   maxheap.clear
#   time = Benchmark.measure do |i|
#         (size*10000).times do
#           maxheap.push(rand(10000))
#         end
#   end
#   file.write("#{size*10000},#{time.real}\n")
# end

# file.close

file = File.open('output-30.csv', 'w')

arr = Array.new
total = 0
num = 0
(1..30).each do |size|
  arr.clear
  (size*10000).times do
    num = rand(1000)
    arr.push(Knapsack.new(num, 1))
    total = total + num
  end
  # puts total
  time = Benchmark.measure do
    f.fractional_knapsack(arr, total)
  end
  file.write("#{size*10000},#{time.real}\n")
end

file.close