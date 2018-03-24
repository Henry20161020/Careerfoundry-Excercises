require 'rails_helper'

describe Product do
  before do
    @product=FactoryBot.create(:product)

  end

  context "when the product has comments" do
    it "returns the average rating of all comments" do
      @user = FactoryBot.create(:user)
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
      @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
      expect(@product.average_rating).to eq 3
    end
  end

  context "when the product is created" do
    it "is not valid without a name" do
      expect(Product.new(description: "Cool bike", price: 3.2)).not_to be_valid
    end
    it "is not valid without price" do
      expect(Product.new(description: "Cool bike", name: "race bike")).not_to be_valid
    end
    it "is not valid if price is not decimal" do
      expect(Product.new(description: "Cool bike", name: "race bike", price: "10.o")).not_to be_valid
    end
  end
end
