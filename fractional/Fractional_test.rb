require_relative 'Item.rb'
require_relative 'Fractional.rb'

f = Fractional.new

# one = Item.new(12, 4)

# two = Item.new(32, 8)

# three = Item.new(40, 2)

# four = Item.new(30, 6)

# five = Item.new(50, 1)

# set = [one, two, three, four, five]
# f.fractional_knapsack(set, 100)

# file = File.open('outputsort-30.csv', 'w')

# arr = Array.new
# total = 0
# num = 0
# (1..30).each do |size|
#   arr.clear
#   (size*10000).times do
#     num = rand(10000)
#     arr.push(Item.new(num, 1))
#     total = total + num
#   end
#   time = Benchmark.measure do
#     10.times do
#       f.fractional_knapsack(arr, total)
#     end
#   end
#   file.write("#{size*10000},#{time.real/10}\n")
# end

# file.close

# file = File.open('outputsort-1mil.csv', 'w')
# arr = Array.new
# total = 0
# num = 0
# (1..10).each do |size|
#   arr.clear
#   (size*1000000).times do
#     num = rand(10000)
#     arr.push(Item.new(num, 1))
#     total = total + num
#   end
#   time = Benchmark.measure do
#     10.times do
#       f.fractional_knapsack(arr, total)
#     end
#   end
#   file.write("#{size*1000000},#{time.real/10}\n")
# end

# file.close

file = File.open('sort.csv', 'w')
arr = Array.new
num = 0
(1..20).each do |size|
  arr.clear
  (size*10000).times do
    num = rand(10000)
    arr.push(Item.new(num, 1))
  end
  time = Benchmark.measure do
    10.times do
      arr.sort_by{|obj| obj.value_index}
    end
  end
  file.write("#{size*10000},#{time.real/10}\n")
end

file.close