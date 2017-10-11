require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("brownie", 100, chef)}
  let(:chef) { double("chef", name: "Mike") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("ice_cream", "alot", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) { dessert.ingredients.push("chocolate")}

    it "adds an ingredient to the ingredients array"do
      expect(dessert.ingredients).to include("chocolate")
    end
  end

  describe "#mix!" do

    it "shuffles the ingredient array" do
      ingredients = ["chocolate", "flour", "eggs", "fudge"]
      ingredients.each { |ingredient| dessert.add_ingredient(ingredient) }

      expect(dessert.mix!).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(60)).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(101) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Mike")
      expect(dessert.serve).to eq("Mike has made 100 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
     expect(chef).to receive(:bake).with(dessert)
     dessert.make_more
    end
  end
end
