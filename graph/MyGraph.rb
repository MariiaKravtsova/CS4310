#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'

class MyGraph
  attr_accessor :label

  def initialize(options)
    @label = label
    @graph = Hash.new
    @options = Hash.new
  end

  def new_vertex(options)
    vertex = MyVertex.new(options)
    @graph[vertex] = {}
  end

  def new_edge(w, v, options)
    edge = MyEdge.new(options)
    graph[v] = {w => edge}
    graph[w] = {v => edge}
  end

  def remove_edge(v)

  end

  def num_vertices()
    @verteces.length
  end

  def list_vertices()
    @verteces.keys
  end
end

my_graph = MyGraph.new("mom")
my_graph.new_vertex(label: "a")
my_graph.new_vertex(label: "b")
my_graph.new_vertex(label: "c")
my_graph.new_vertex(value: 4)
my_graph.new_vertex(value: 5)
puts my_graph.num_vertices
puts my_graph.list_vertices
