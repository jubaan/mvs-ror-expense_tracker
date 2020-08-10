require 'rails_helper'

RSpec.describe User, type: :model do
 it 'User is invalid withoud name' do
    expect(User.new(name: nil)).to_not errors_on(:name)
  end
end
