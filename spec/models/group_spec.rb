require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { create :user }
  let(:group) { build :group, user: user }

  it 'Group is valid without with full params given' do
    expect(group).to be_valid
  end

  it 'Group is valid without icon' do
    group.icon = nil
    expect(group).to be_valid
  end

  it 'Group is invalid without name' do
    expect(Group.new(name: nil)).to_not be_valid
  end

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name) }

  it { is_expected.to have_many(:expenses) }
end
