require 'spec_helper'

describe MyHuffman do
  it { is_expected.to respond_to(:count_frequencies).with(1).argument }
  it { is_expected.to respond_to(:huffman).with(1).argument }
  it { is_expected.to respond_to(:encode_string).with(2).arguments }


  before :each do
    @huffman = MyHuffman.new
  end

  describe "#count_frequencies" do
    it "returns -1 when string is empty" do
      expect(@huffman.count_frequencies("")).to eql(-1)
    end
    it "returns hash for Mississippi River" do
      s = "Mississippi River"
      hash = {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
      expect(@huffman.count_frequencies(s)).to eql(hash)
    end
  end

  describe "#traversal" do
    it "returns hash made of hufman tree traversed on space" do
      hash = {" "=>1}
      tree = @huffman.huffman(hash)
      code = {" "=>""}
      expect(@huffman.traversal(tree)).to eql(code)
    end
    it "returns hash made of hufman tree traversed" do
      hash = {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
      tree = @huffman.huffman(hash)
      code = {"m"=>"0000", "v"=>"1", "p"=>"1", "s"=>"1", "r"=>"100", "e"=>"110", " "=>"111", "i"=>"11"}
      expect(@huffman.traversal(tree)).to eql(code)
    end
  end

  describe "#encode_string" do
    it "returns -1 when string is not found" do
      s = "zzz"
      hash = {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
      tree = @huffman.huffman(hash)
      expect(@huffman.encode_string(tree, s)).to eql(-1)
    end
    it "returns encoding for Mississippi River" do
      s = "Mississippi River"
      hash = {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
      tree = @huffman.huffman(hash)
      expect(@huffman.encode_string(tree, s)).to eql("000011111111111111111100111110100")
    end
  end
end
