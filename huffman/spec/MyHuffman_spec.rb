require 'spec_helper'

describe MyHuffman do
  it { is_expected.to respond_to(:count_frequencies).with(1).argument }
  it { is_expected.to respond_to(:huffman).with(1).argument }
  it { is_expected.to respond_to(:encode_string).with(2).arguments }


  before :each do
    @huffman = MyHuffman.new
  end

  describe "#count_frequencies" do
    
  end

end
