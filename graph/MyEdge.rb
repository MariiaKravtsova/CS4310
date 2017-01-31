#!/usr/bin/env ruby

class MyEdge
  attr_accessor :label, :value

  def initialize(label: nil, value: 0)
    @label = label
    @value = value
  end
end
