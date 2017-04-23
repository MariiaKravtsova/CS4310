require 'benchmark'
require_relative 'MyGraph'
require 'set'

class Kruskal

  def kruskal(g)
    hash = Hash.new
    g.vertices.each do |v|
        hash[v] = Set.new [v]
    end
    q = g.edges.sort!
    t = Array.new
    while t.size < g.vertices.size - 1
        edge = q.shift
        if hash[edge.vertex1] != hash[edge.vertex2]
            t.push(edge)
            hash[edge.vertex1] = hash[edge.vertex1].union(hash[edge.vertex2])
            hash[edge.vertex2] = hash[edge.vertex2].union(hash[edge.vertex1])
        end
    end
  end
end