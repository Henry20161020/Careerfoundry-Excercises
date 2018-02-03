require 'rails_helper'

describe User, type: :model do
  it "is not valid without a password" do
    expect(User.new(email: "test@gmail.ca")).not_to be_valid
  end
  it "should not validate users without an email address" do
    @user = FactoryBot.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end
