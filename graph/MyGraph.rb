#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'

class MyGraph
  attr_accessor :label, :vertices, :edges

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
      v.adjacent.push(w)
      w.adjacent.push(v)
      @edges.push(edge)

    end
  end

  def remove_edge(e)
    if @edges.include?(e)
      e.vertex_one.adjacent.delete_at(e.vertex_one.adjacent.find_index(e.vertex_two))
      e.vertex_two.adjacent.delete_at(e.vertex_two.adjacent.find_index(e.vertex_one))
      @edges.delete_at(@edges.find_index(e))
    end
  end

  def remove_vertex(v)
    @edges.each do |e|
      if e.vertex_one.equal?(v) or e.vertex_two.equal?(v)
        remove_edge(e)
      end
    end
    @vertices.delete_at(@vertices.find_index(v))
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
    @vertices[@vertices.index(v)]
  end

  def deg_vertex(v)
    v.adjacent.length
  end

  def incident_edges(v)
    incident = Array.new
    @edges.each do |e|
      if e.vertex_one.equal?(v) or e.vertex_two.equal?(v)
        incident << e
      end
    end
    incident
  end

  def adjacent_vertices(v)
    v.adjacent
  end

  def end_vertices(e)
    return e.vertex_one, e.vertex_two
  end

  def are_adjacent(v, w)
    v.adjacent.include?(w) and w.adjacent.include?(v)
  end
end
