require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Kat") }
  subject(:dessert) { Dessert.new("chocolate", 10, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("chocolate")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("candy", "5", "chef") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.add_ingredient("chocolate")).to eq(["chocolate"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
    expect(dessert.mix!).to eq(dessert.ingredients.shuffle!)
  end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(5)).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(11)}.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Kat the Great Baker")
      expect(dessert.serve).to eq ("Chef Kat the Great Baker has made 10 chocolates!")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
