
#!/usr/bin/env ruby

class MyVertex
  attr_accessor :label, :value

  def initialize(options = {})
    self.label = options[:label] || ''
    self.value = options[:value] || 0
    self.arr = Array.new
  end
end

v = MyVertex.new(value: 35)
puts v

@v.arr << 1
puts @v.arr
