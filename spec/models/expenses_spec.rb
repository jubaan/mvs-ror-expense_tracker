require 'rails_helper'

RSpec.describe Expense, type: :model do
  let!(:user) { create :user }
  let!(:group) { create :group, user: user }
  let!(:expense) do
    build :expense, author: user, group: group, created_at: '2020-03-01'
  end

  it 'Expense is valid with all params given' do
    expect(expense).to be_valid
  end

  it 'Expense is valid without group' do
    expense.group = nil
    expect(expense).to_not be_valid
  end

  it 'Expense is invalid without name' do
    expense.name = nil
    expect(expense).to_not be_valid
  end

  it 'Expense is invalid without author' do
    expense.author = nil
    expect(expense).to_not be_valid
  end

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name) }
  it { is_expected.to validate_numericality_of(:amount) }

  it { should belong_to(:group) }
  it { should belong_to(:author) }
end
