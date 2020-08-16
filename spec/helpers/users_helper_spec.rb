require 'rails_helper'

RSpec.describe UsersHelper, type: :helper do
  describe '#user_name' do
    let(:current_user) { create :user }

    it "returns 'Hi, current_user.name!' if name length is less than 7 chars" do
      current_user.name = 'Julio'
      expect(user_name).to match("Hi, #{current_user.name}!")
    end

    it "returns 'Welcome!' if name length is less than 7 chars" do
      current_user.name = 'Maria Queme'
      expect(user_name).to match('Welcome')
    end
  end

  describe '#total_expenses_current_user_for_dashboard' do
    let(:current_user) { create :user }
    let!(:entretainment) { create :group, name: 'entretainment', user: current_user }
    let!(:food) { create :group, name: 'food', user: current_user }
    let!(:cinema) { create :expense, name: 'cinema', amount: 5.50, group: entretainment, author: current_user }
    let!(:tacos) { create :expense, name: 'tacos', amount: 4.50, group: food, author: current_user }

    it 'sums all expenses amount' do
      expect(current_user.expenses.total).to eq(10.00)
    end
  end
end
