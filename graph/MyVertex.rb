#!/usr/bin/env ruby

class MyVertex
  attr_accessor :label, :value, :adjacent

  def initialize(options = {})
    @label = options[:label] || ''
    @value = options[:value] || 0
    @adjacent = Array.new
  end
end
