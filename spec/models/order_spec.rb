require 'rails_helper'

describe Order do
  it "is not valid without user_id" do
    expect(Order.new(product_id: 2, total: 300)).not_to be_valid
  end
end
