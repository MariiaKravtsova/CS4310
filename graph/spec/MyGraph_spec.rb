require 'spec_helper'

describe MyGraph do
  before :each do
    @graph = MyGraph.new("Graph")
  end

  context "add new vertex" do
    it "create a new vertex with a label and add it to an array" do
      a = @graph.new_vertex(label: "a")
      expect([@graph.vertices[0]]).to eql(a)
    end
  end

  context "add new vertex" do
    it "create a new vertex with a value and add it to an array" do
      a = @graph.new_vertex(value: 35)
      expect([@graph.vertices[0]]).to eql(a)
    end
  end

  context "add new edge" do
    it "create a new edge with value and add it to an array" do
      @graph.new_vertex(label: "v")
      @graph.new_vertex(label: "w")
      e = @graph.new_edge(@graph.vertices[0], @graph.vertices[1], value: 120)
      expect([@graph.edges[0]]).to eql(e)
    end
  end

  context "number of vertices" do
    it "count the vertices in the graph" do
      @graph.new_vertex(label: "v")
      @graph.new_vertex(label: "w")
      @graph.new_vertex(label: "x")
      @graph.new_vertex(label: "y")
      @graph.new_vertex(label: "z")
      expect(@graph.num_vertices).to eql(5)
    end
  end

  context "number of edges" do
    it "count the edges in the graph" do
      @graph.new_vertex(label: "v")
      @graph.new_vertex(label: "w")
      @graph.new_vertex(label: "x")
      @graph.new_vertex(label: "y")
      @graph.new_edge(@graph.vertices[0], @graph.vertices[1], value: 120)
      @graph.new_edge(@graph.vertices[0], @graph.vertices[2], value: 150)
      @graph.new_edge(@graph.vertices[1], @graph.vertices[3], value: 170)
      expect(@graph.num_edges).to eql(3)
    end
  end

  context "return a vertex" do
    it "return a vertex" do
      @graph.new_vertex(label: "a")
      expect(@graph.vertex(@graph.vertices[0])).to eq(@graph.vertices[0])
    end
  end

  context "degres of a vertex" do
    it "return the number of edges to the vertex" do
      @graph.new_vertex(label: "v")
      @graph.new_vertex(label: "w")
      @graph.new_vertex(label: "x")
      @graph.new_vertex(label: "y")
      a = @graph.new_edge(@graph.vertices[0], @graph.vertices[1], value: 120)
      b = @graph.new_edge(@graph.vertices[0], @graph.vertices[2], value: 150)
      c = @graph.new_edge(@graph.vertices[1], @graph.vertices[3], value: 170)
      expect(@graph.deg_vertex(@graph.vertices[0])).to eq(2)
      expect(@graph.deg_vertex(@graph.vertices[2])).to eq(1)
    end
  end

  context "number of adjecent verteces" do
    it "return the array of adjecent verteces" do
      v = @graph.new_vertex(label: "v")
      w = @graph.new_vertex(label: "w")
      x = @graph.new_vertex(label: "x")
      y = @graph.new_vertex(label: "y")
      a = @graph.new_edge(@graph.vertices[0], @graph.vertices[1], value: 120)
      c = @graph.new_edge(@graph.vertices[1], @graph.vertices[3], value: 170)
      expect(@graph.adjacent_vertices(@graph.vertices[1])).to eq([@graph.vertices[0], @graph.vertices[3]])
    end
  end

  context "are adjecent" do
    it "check if the vertices are adjecent" do
      @graph.new_vertex(label: "v")
      @graph.new_vertex(label: "w")
      @graph.new_vertex(label: "x")
      @graph.new_edge(@graph.vertices[0], @graph.vertices[1], value: 120)
      expect(@graph.are_adjacent(@graph.vertices[0], @graph.vertices[1])).to eq(true)
    end
  end

  context "end verteces" do
    it "return the end vertices for an edge" do
      @graph.new_vertex(label: "v")
      @graph.new_vertex(label: "w")
      @graph.new_edge(@graph.vertices[0], @graph.vertices[1], value: 120)
      expect(@graph.end_vertices(@graph.edges[0])).to match_array([@graph.vertices[0], @graph.vertices[1]])
    end
  end
end
