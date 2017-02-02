#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'

class MyGraph
  attr_accessor :label

  def initialize(options)
    @label = label
    @vertices = Array.new
    @edges = Array.new
    @options = Hash.new
  end

  def new_vertex(options)
    vertex = MyVertex.new(options)
    @vertices.push(vertex)
  end

  def new_edge(w, v, options)
    edge = MyEdge.new(options)
    edge.vertex_one = v
    edge.vertex_two = w
    @edges.push(edge)
    v.adjecent = w
    w.adjecent = v
    puts edge.inspect
    puts v.label, w.label
  end

  def remove_edge(v)

  end

  def num_vertices()
    @verteces.length
  end

  def list_vertices()
    @verteces
  end
end

my_graph = MyGraph.new("mom")
my_graph.new_vertex(label: "a")
my_graph.new_vertex(label: "b")
my_graph.new_vertex(label: "c")
my_graph.new_vertex(value: 4)
my_graph.new_vertex(value: 5)
puts
v = MyVertex.new(label: 'v')
w = MyVertex.new(label: 'w')
my_graph.new_edge(v, w, value: 120)
