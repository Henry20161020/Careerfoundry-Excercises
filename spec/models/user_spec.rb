require 'rails_helper'

describe User do
  it "is not valid without a password" do
    expect(User.new(email: "test@gmail.ca")).not_to be_valid
  end
end
