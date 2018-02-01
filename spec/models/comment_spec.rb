require 'rails_helper'

describe Comment do
  it "is not valid without user_id" do
    expect(Comment.new(product_id: 2, body: "good", rating: 4)).not_to be_valid
  end
end
