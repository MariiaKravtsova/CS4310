#!/usr/bin/env ruby

class MyVertex
  attr_accessor :label, :value

  def initialize(label: nil, value: 0)
    @label = label
    @value = value
  end
end
