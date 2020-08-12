require 'rails_helper'

RSpec.feature 'AddExpenses', type: :feature do
  include Warden::Test::Helpers
  let(:user) { create :user }

  it 'visit dashboard and clicks on add expense' do
    login_as(user)

    click_link_or_button page.find_button('Add Expense').click

    expect(page).to have_content('Add Expense')
  end
end
