#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'
require_relative 'MyGraph'
require_relative 'kruskal'

graph = Graph.new
kruskal = Kruskal.new

graph.add_vertex(a = Vertex.new("A"))
graph.add_vertex(b = Vertex.new("B"))
graph.add_vertex(c = Vertex.new("C"))
graph.add_vertex(d = Vertex.new("D"))
graph.add_vertex(e = Vertex.new("E"))
graph.add_vertex(f = Vertex.new("F"))
graph.add_vertex(g = Vertex.new("G"))

graph.add_edge(a, b, 7)
graph.add_edge(a, d, 3)
graph.add_edge(b, c, 8)
graph.add_edge(b, e, 10)
graph.add_edge(b, d, 5)
graph.add_edge(d, e, 6)
graph.add_edge(c, e, 2)
graph.add_edge(d, f, 1)
graph.add_edge(e, f, 11)
graph.add_edge(g, f, 4)
graph.add_edge(g, e, 9)

kruskal.kruskal(graph)
