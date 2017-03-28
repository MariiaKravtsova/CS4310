# require 'benchmark'
# require 'rubygems'
# require 'algorithms'
require_relative 'Knapsack.rb'
# include Containers

class Fractional

  def fractional_knapsack(s, w)
    s.each do |i|
      i.final_amount = 0
      i.value_index = i.benefit / weight
    end
    current_weight = 0

    # TODO sort
    while (current_weight < w.empty?) do
    end
  end
end
