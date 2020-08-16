require 'rails_helper'

RSpec.describe ExpensesHelper, type: :helper do
  describe '#expenses_by_most_recent' do
    let!(:current_user) { create :user }
    let!(:entretainment) { create :group, name: 'entretainment', user: current_user }
    let!(:food) { create :group, name: 'food', user: current_user }
    let!(:cinema) do
      create :expense,
             name: 'cinema',
             amount: 5.50,
             group: entretainment,
             author: current_user
    end
    let!(:tacos) do
      create :expense,
             name: 'tacos', amount: 4.50, group: food, author: current_user
    end

    it 'returns an ordered array by most recent' do
      actual = [tacos, cinema]
      expect(expenses_by_most_recent).to eq(actual)
    end
  end

  describe '#formated_date' do
    let!(:current_user) { create :user }
    let!(:entretainment) { create :group, name: 'entretainment', user: current_user }
    let!(:cinema) do
      create :expense,
             name: 'cinema',
             amount: 5.50,
             group: entretainment,
             author: current_user,
             created_at: '2020-01-01'
    end

    it 'formats date by day/mont/year' do
      actual = '1/1/2020'
      expect(formated_date(cinema)).to match(actual)
    end
  end
end
