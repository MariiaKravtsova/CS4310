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
    while (total_weight < w && maxheap.empty?) do
      max_value = maxheap.max!


    end
  end
end
