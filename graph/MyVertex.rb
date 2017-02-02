#!/usr/bin/env ruby

class MyVertex
  attr_accessor :label, :value, :adjecent

  def initialize(options = {})
    @label = options[:label] || ''
    @value = options[:value] || 0
    @adjecent = Array.new
  end
end
