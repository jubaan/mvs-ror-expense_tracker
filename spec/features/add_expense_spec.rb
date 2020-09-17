require 'rails_helper'

RSpec.feature 'AddExpenses', type: :feature do
  include Warden::Test::Helpers

  let(:user) { create :user }
  let!(:group) { create :group, name: 'Not Assigned', user: user }

  it 'visit dashboard and clicks on add expense' do
    login_as(user)

    visit user_path(user)

    click_link_or_button 'Add Expense'

    expect(page).to have_content('Name')
  end
end
