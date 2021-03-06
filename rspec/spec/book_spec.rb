require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new "Title", "Author", :category
  end

  describe "#new" do
    it "takes three parameters and return a Book object" do
      expect(@book).to be_an_instance_of Book
      # @book.should be_an_instance_of Book
    end
  end

  describe "#title" do
    it "returns the correct title" do
      expect(@book.title).to eql "Title"
    end
  end

  describe "#author" do
    it "returns the correct author" do
      expect(@book.author).to eql "Author"
    end
  end

  describe "#category" do
    it "returns the correct category" do
        expect(@book.category).to eql :category
    end
  end
end
