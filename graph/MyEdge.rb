require "MyVertex"

class MyEdge(label="null", value=0)
  attr_accessor :label, :value

  def initialize(label, value)
    @label = label
    @value = value
    @v = MyVertex.new
    @w = MyVertex.new
  end

  def new_edge(w, v, label, value)

  end

  def remove_edge(MyEdge v)

  end
end
