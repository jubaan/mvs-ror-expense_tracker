require 'rails_helper'
include Warden::Test::Helpers

RSpec.feature 'AddExpenses', type: :feature do
  let(:user) { create :user }

  it 'visit dashboard and clicks on add expense' do
    login_as(user)

    click_link_or_button page.find_button('Add Expense').click

    expect(page).to have_content('Add Expense')
  end
end
