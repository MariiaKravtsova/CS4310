class Edge
  attr_accessor :left, :right, :weight

  def initialize(left, right, weight)
    @left, @right, @weight = left, right, weight
  end

  def <=>(other)
    self.weight <=> other.weight
  end

  def to_s
    "#{left.to_s} <=> #{right.to_s} with weight #{weight}"
  end
end