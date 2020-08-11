require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build :user }

  it 'User is valid with all params given' do
    expect(user).to be_valid
  end

  it 'User is invalid without name' do
    expect(User.new(name: nil)).to_not be_valid
  end

  it 'User is invalid without email' do
    expect(User.new(email: nil)).to_not be_valid
  end

  it 'User is invalid without password' do
    expect(User.new(password: nil)).to_not be_valid
  end
end
