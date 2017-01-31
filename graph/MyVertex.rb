#!/usr/bin/env ruby

class MyVertex
  attr_accessor :label, :value

  def initialize(options = {})
    @label = options[:label] || ''
    @value = options[:value] || 0
  end
end
