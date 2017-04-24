# Implementation by https://github.com/brianstorti/ruby-graph-algorithms/tree/master/kruskal

class Graph
  attr_accessor :vertices
  attr_accessor :edges

  def initialize
    @vertices = []
    @edges = []
  end

  def add_vertex(vertex)
    vertices << vertex
    vertex.graph = self
  end

  def add_edge(from, to, weight)
    edges << Edge.new(from, to, weight)
  end
end