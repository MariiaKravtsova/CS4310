
#!/usr/bin/env ruby

class MyVertex
  attr_accessor :label, :value

  def initialize(options = {})
    self.label = options[:label] || ''
    self.value = options[:value] || 0
  end
end

v = MyVertex.new(value: 35)
puts v
