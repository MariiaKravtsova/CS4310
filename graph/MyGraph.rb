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
    if @vertices.include? (v and w)
      edge = MyEdge.new(options)
      edge.vertex_one = v
      edge.vertex_two = w
      @edges.push(edge)
      @v.adjecent << w
    end
  end

  def remove_edge(v)

  end

  def num_vertices()
    @vertices.length
  end

  def num_edges()
    @edges.length
  end

  def list_vertices()
    @vertices
  end

  def list_edges()
    @edges
  end

  def vertex(v)
    @vertices.find(v)
  end

  def deg_vertex(v)
    @adjecent.length
  end

  def my_print()
    new_edge(@vertices[0], @vertices[1], value:120)
    puts
    @vertices.each {|i| puts "#{i.label}, #{i.value}"}
    @edges.each {|i| puts "#{i.label}, #{i.value}"}
  end
end

my_graph = MyGraph.new("mom")
my_graph.new_vertex(label: "a")
my_graph.new_vertex(label: "b")
my_graph.new_vertex(label: "c")
my_graph.new_vertex(value: 4)
my_graph.new_vertex(value: 5)

my_graph.my_print

# v = MyVertex.new(label: 'a', value: 0)
# w = MyVertex.new(label: 'b')
# my_graph.new_edge(v, w, value: 120)

# puts my_graph.deg_vertex(v)
