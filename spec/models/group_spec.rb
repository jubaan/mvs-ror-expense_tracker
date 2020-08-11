require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Model' do
    let(:group) { build :group }

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
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name) }
  end
end
