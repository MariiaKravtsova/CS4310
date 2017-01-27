require "MyVertex"

class MyEdge(label=nil, value=0)
  attr_accessor :label, :value

  def initialize(label, value)
    @label = label
    @value = value
  end


end
