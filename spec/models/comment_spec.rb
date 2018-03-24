require 'rails_helper'

describe Comment do
  it "returns comment when all parameters are valid" do
    expect(FactoryBot.build(:comment)).to be_valid
  end
  it "is not valid without user_id" do
    expect(Comment.new(product_id: 2, body: "good", rating: 4)).not_to be_valid
  end
  it "is not valid without body" do
    expect(Comment.new(product_id: 2, user_id: 1, rating: 3)).not_to be_valid
  end
  it "is not valid without product_id" do
    expect(Comment.new(body: "soso", user_id: 1, rating: 2)).not_to be_valid
  end
  it "is not valid without rating" do
    expect(Comment.new(product_id: 2, user_id: 1, body: "superb")).not_to be_valid
  end
  it "is not valid when rating is not integer" do
    expect(FactoryBot.build(:comment, rating: 3.2)).not_to be_valid
    expect(FactoryBot.build(:comment, rating: "great")).not_to be_valid
  end

end
