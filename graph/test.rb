#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'
require_relative 'MyGraph'

puts
puts "1. Create	an instance	of MyGraph"
my_graph = MyGraph.new("Airports")

puts
puts "2. Add all vertices	with the	labels shown"
my_graph.new_vertex(label: "HNL")
my_graph.new_vertex(label: "SFO")
my_graph.new_vertex(label: "ORD")
my_graph.new_vertex(label: "LAX")
my_graph.new_vertex(label: "DFW")
my_graph.new_vertex(label: "LGA")
my_graph.new_vertex(label: "PVD")
my_graph.new_vertex(label: "MIA")

puts
puts "3. Add all edges shown with appropriate values"
my_graph.new_edge(my_graph.vertices[0], my_graph.vertices[3], label: "2555", value: 2555)
my_graph.new_edge(my_graph.vertices[1], my_graph.vertices[2], label: "1843", value: 1843)
my_graph.new_edge(my_graph.vertices[2], my_graph.vertices[6], label: "849", value: 849)
my_graph.new_edge(my_graph.vertices[3], my_graph.vertices[1], label: "337", value: 337)
my_graph.new_edge(my_graph.vertices[3], my_graph.vertices[2], label: "1743", value: 1743)
my_graph.new_edge(my_graph.vertices[3], my_graph.vertices[4], label: "1233", value: 1233)
my_graph.new_edge(my_graph.vertices[4], my_graph.vertices[2], label: "802", value: 802)
my_graph.new_edge(my_graph.vertices[4], my_graph.vertices[5], label: "1387", value: 1387)
my_graph.new_edge(my_graph.vertices[4], my_graph.vertices[7], label: "1120", value: 1120)
my_graph.new_edge(my_graph.vertices[6], my_graph.vertices[5], label: "142", value: 142)
my_graph.new_edge(my_graph.vertices[5], my_graph.vertices[7], label: "1099", value: 1099)

puts "4. a.num_vertices"
puts my_graph.num_vertices()

puts
puts "4 b.num_edges"
puts my_graph.num_edges()

puts
puts "4 c.list_vertices"
list = my_graph.list_vertices().each {|i| puts i.label}


puts
puts "4 d.list_edges"
my_graph.list_edges().each {|i| puts i.label}

puts
puts "4 e.vertex"
puts my_graph.vertex(my_graph.vertices[4]).label

puts
puts "4 f.deg_vertex"
my_graph.list_vertices().each {|i| puts my_graph.deg_vertex(i)}

puts
puts "4 g.incident_edges"
my_graph.list_vertices().each do |i|
  print "#{i.label} incident with "
  my_graph.incident_edges(i).each do |y|
    print "#{y.label} \n"
  end
end

puts
puts "4 h.adjacent_vertices"
my_graph.list_vertices().each do |i|
  print "#{i.label} adjacent to "
  my_graph.incident_edges(i).each do |y|
    print "#{y.label} \n"
  end
end

puts
puts "4 i.list_edges"
my_graph.list_edges().each do |x|
  print "#{x.label} 's two end vertices are "
  my_graph.end_vertices(x).each do |y|
    print "#{y.label} \n"
  end
end

puts
puts "4 j.list_vertices"
my_graph.list_vertices().each do |x|
  my_graph.list_vertices().each do |y|
    print "#{x.label} and "
    print "#{y.label} are adjacent: "
    print my_graph.are_adjacent(x,y)
    print "\n"
  end
end

puts
puts "5. Check update methods"
puts "graph edges ".concat((my_graph.num_edges).to_s)
puts "LAX is degree ".concat(my_graph.deg_vertex(my_graph.vertices[3]).to_s)
puts "HNL is degree ".concat(my_graph.deg_vertex(my_graph.vertices[0]).to_s)
puts "removing edge 2555"
my_graph.remove_edge(my_graph.edges[0])
puts "graph edges ".concat(my_graph.num_edges.to_s)
puts "LAX is degree ".concat(my_graph.deg_vertex(my_graph.vertices[3]).to_s)
puts "HNL is degree ".concat(my_graph.deg_vertex(my_graph.vertices[0]).to_s)

my_graph.remove_vertex(my_graph.vertices[0])

my_graph.list_vertices().each {|x| print "#{x.label} " }
