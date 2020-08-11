require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:group) { build :group }

  it 'Group is valid without with full params given' do
    expect(group).to be_valid
  end

  it 'Group is valid without icon' do
    group.icon = 'icon'
    expect(group).to be_valid
  end

  it 'User is invalid without name' do
    expect(Group.build(name: nil)).to_not be_valid
  end
end
