require_relative 'Knapsack.rb'
require_relative 'Fractional.rb'

f = Fractional.new

one = Knapsack.new
one.benefit = 12
one.weight = 4

two = Knapsack.new
two.benefit = 32
two.weight = 8

three = Knapsack.new
three.benefit = 40
three.weight = 2

four = Knapsack.new
four.benefit = 30
four.weight = 6

five = Knapsack.new
five.benefit = 50
five.weight = 1

set = [one, two, three, four, five]
f.fractional_knapsack(set, 100)

file = File.open('output.csv', 'w')

maxheap = MaxHeap.new
(1..10).each do |size|
  maxheap.clear
  (size*10000).times do
    maxheap.push(rand(10000))
  end
  time = Benchmark.measure do |i|
    10.times do
      maxheap.max!
    end
  end
  file.write("#{size*10000},#{time.real/10}\n")
end

file.close
