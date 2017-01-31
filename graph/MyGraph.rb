#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'

class MyGraph
  attr_accessor :label

  def initialize(label: nil)
    @label = label
  end

  graph = Hash.new
  verteces = Array.new

  def new_vertex(label: nil, value: 0)
    vertex = MyVertex.new(label, value)
    verteces.push(vertex)
  end

  def new_edge(w, v, label, value)
    // find v in hash_verteces
    // "" w
    
  end

  def remove_edge(v)

  end
end

my_graph = MyGraph.new("mom")
my_graph.new_vertex(3)
my_graph.new_vertex(5)
puts my_graph.verteces
