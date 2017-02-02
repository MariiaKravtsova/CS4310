#!/usr/bin/env ruby

class MyEdge
  attr_accessor :label, :value, :vertex_one, :vertex_two

  def initialize(options = {})
    @label = options[:label] || ''
    @value = options[:value] || 0
    @vertex_one = nil
    @vertex_two = nil
  end
end
