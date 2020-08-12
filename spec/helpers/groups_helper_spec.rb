require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the GroupsHelper. For example:
#
# describe GroupsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe GroupsHelper, type: :helper do
  describe '#groups_by_most_recent' do
    let(:current_user) { create :user }
    let!(:entretainment) { create :group, name: 'entretainment' }
    let!(:food) { create :group, name: 'food' }
    let!(:cinema) { create :expense, name: 'cinema', amount: 5.50, group: entretainment, author: current_user }
    let!(:tacos) { create :expense, name: 'tacos', amount: 4.50, group: food, author: current_user }

    it 'returns an ordered set by most recent' do
      actual = [entretainment, food].to_set
      expect(groups_by_most_recent).to eq(actual)
    end
  end
end
