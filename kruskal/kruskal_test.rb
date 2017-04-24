#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'
require_relative 'MyGraph'
require_relative 'kruskal'


kruskal = Kruskal.new
arr = Array.new
file = File.open('output3.csv', 'w')
(1..12).each do |size|
graph = Graph.new
num = 0
arr.clear
  # from size * 10 create an array with new vertices, and add as vertex
  5000.times do |i|
    arr.push(Vertex.new(i))
    graph.add_vertex(arr[i])
  end

  i = 0
  # num_edges = (arr.size*(arr.size-1))/2
  (size*1000000).times do
    num = rand(arr.size)
    a = arr[num]
    num = rand(arr.size)
    b = arr[num]
    w = rand(10000)
    if a != b
      graph.add_edge(a, b, w)
    end
  end

  time = Benchmark.measure do
    10.times do
      kruskal.kruskal(graph)
    end
  end
  file.write("#{size*1000000}, #{5000}, #{time.real}\n")
end

file.close


# graph.add_vertex(a = Vertex.new("A"))
# graph.add_vertex(b = Vertex.new("B"))
# graph.add_vertex(c = Vertex.new("C"))
# graph.add_vertex(d = Vertex.new("D"))
# graph.add_vertex(e = Vertex.new("E"))
# graph.add_vertex(f = Vertex.new("F"))
# graph.add_vertex(g = Vertex.new("G"))

# graph.add_edge(a, b, 7)
# graph.add_edge(a, d, 3)
# graph.add_edge(b, c, 8)
# graph.add_edge(b, e, 10)
# graph.add_edge(b, d, 5)
# graph.add_edge(d, e, 6)
# graph.add_edge(c, e, 2)
# graph.add_edge(d, f, 1)
# graph.add_edge(e, f, 11)
# graph.add_edge(g, f, 4)
# graph.add_edge(g, e, 9)

# kruskal.kruskal(graph)
