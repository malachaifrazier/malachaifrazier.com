require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  it "is not valid without an email" do
    user.email = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end

  it "is not valid with a password confirmation that does not match the password" do
    user.password_confirmation = "notpassword"
    expect(user).to_not be_valid
  end

  it "is not valid with a password that is too short" do
    user.password = "short"
    expect(user).to_not be_valid
  end

end
