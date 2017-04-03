require 'benchmark'
require_relative 'Item.rb'

class Fractional

  def fractional_knapsack(s, w)
    s.each do |i|
      i.final_amount = 0
      i.value_index = i.benefit / i.weight
    end
    maxheap = s.sort_by{|obj| obj.value_index}
    total_weight = 0
    while (total_weight < w and !maxheap.empty?)
      temp = maxheap.pop
      a = [temp.value_index, w - total_weight].min
      temp.final_amount = a
      total_weight = total_weight + a
    end
    # s.each { |i| puts i.final_amount }
  end
end