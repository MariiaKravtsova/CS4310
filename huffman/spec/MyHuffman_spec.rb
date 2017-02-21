require 'spec_helper'

describe MyHuffman do
  it { is_expected.to respond_to(:count_frequencies).with(1).argument }
  it { is_expected.to respond_to(:huffman).with(1).argument }
  it { is_expected.to respond_to(:encode_string).with(2).arguments }


  before :each do
    @huffman = MyHuffman.new
  end

  describe "#count_frequencies" do
    it "returns -1" do
      expect(@huffman.count_frequencies("")).to eql(-1)
    end
    it "returns hash for Mississippi River" do
      s = "Mississippi River"
      hash = {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
      expect(@huffman.count_frequencies(s)).to eql(hash)
    end
  end

end
