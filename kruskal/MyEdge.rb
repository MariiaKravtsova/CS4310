class Edge
  attr_accessor :vertex1, :vertex2, :weight

  def initialize(vertex1, vertex2, weight)
    @vertex1, @vertex2, @weight = vertex1, vertex2, weight
  end

  def <=>(other)
    self.weight <=> other.weight
  end

  def to_s
    "#{vertex1.to_s} <=> #{vertex2.to_s} with weight #{weight}"
  end
end