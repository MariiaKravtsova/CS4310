require 'algorithms'
require 'benchmark'
require 'rubygems'
require_relative 'Knapsack.rb'
include Containers

class Fractional
  
  def fractional_knapsack(s, w)
    maxheap = MaxHeap.new
    s.each do |i|
      i.final_amount = 0
      i.value_index = i.benefit / i.weight
      maxheap.push(i.value_index, i)
    end
    total_weight = 0
    while (total_weight < w and !maxheap.empty?)
      temp = maxheap.max!
      a = [temp.value_index, w - total_weight].min
      temp.final_amount = a
      total_weight = total_weight + a
    end
    # s.each { |i| puts i.final_amount }
  end
end
