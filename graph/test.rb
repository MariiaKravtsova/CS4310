#!/usr/bin/env ruby
require_relative 'MyEdge'
require_relative 'MyVertex'
require_relative 'MyGraph'

puts
puts "1. Create	an	instance	of	MyGraph"
my_graph = MyGraph.new("Airports")

puts
puts "2. Add	all	vertices	with	the	labels	shown"
my_graph.new_vertex(label: "HNL")
my_graph.new_vertex(label: "SFO")
my_graph.new_vertex(label: "ORD")
my_graph.new_vertex(label: "LAX")
my_graph.new_vertex(label: "DFW")
my_graph.new_vertex(label: "LGA")
my_graph.new_vertex(label: "PVD")
my_graph.new_vertex(label: "MIA")

puts
puts "3. Add all edges	shown	with	appropriate	values"
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
temp = my_graph.list_vertices()
temp.each do |x|
    puts x.label
end

puts
puts "4 d.list_edges"
temp = my_graph.list_edges()
temp.each do |x|
    puts x.label
end

puts
puts "4 e.vertex"
puts my_graph.vertex(my_graph.vertices[4]).label

puts
puts "4 f.deg_vertex"
temp = my_graph.list_vertices()
temp.each do |x|
    puts my_graph.deg_vertex(x)
end

puts
puts "4 g.incident_edges"
temp.each do |x|
    temp2 =  my_graph.incident_edges(x)
    print x.label + " incident with "
    temp2.each do |y|
        print y.label + " "
    end
    print "\n"
end

puts
puts "4 h.adjacent_vertices"
temp.each do |x|
    temp2 =  my_graph.adjacent_vertices(x)
    print x.label + " adjacent to "
    temp2.each do |y|
        print y.label + " "
    end
    print "\n"
end

puts
puts "4 i.list_edges"
temp = my_graph.list_edges()
temp.each do |x|
    temp2 = my_graph.end_vertices(x)
    print x.label + "'s two end vertices are "
    temp2.each do |y|
        print y.label + " "
    end
    print "\n"
end

puts
puts "4 j.list_vertices"
temp = my_graph.list_vertices()
temp2 = my_graph.list_vertices()
temp.each do |x|
    temp2.each do |y|
        print x.label + " and "
        print y.label + " are adjacent: "
        print my_graph.are_adjacent(x,y)
        print "\n"
    end
end

puts
puts "5. Check update methods"
puts "graph edges ".concat((my_graph.num_edges).to_s)
puts "LAX deg ".concat(my_graph.deg_vertex(my_graph.vertices[3]).to_s)
puts "HNL deg ".concat(my_graph.deg_vertex(my_graph.vertices[0]).to_s)
puts "removing edge 2555"
my_graph.remove_edge(my_graph.edges[0])
puts "graph edges ".concat(my_graph.num_edges.to_s)
puts "LAX deg ".concat(my_graph.deg_vertex(my_graph.vertices[3]).to_s)
puts "HNL deg ".concat(my_graph.deg_vertex(my_graph.vertices[0]).to_s)

my_graph.remove_vertex(my_graph.vertices[0])

temp = my_graph.list_vertices()

temp.each do {|x| print "#{x.label} \n" }
