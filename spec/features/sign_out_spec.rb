require 'rails_helper'

RSpec.feature "UserSignOuts", type: :feature do
  let(:user) { build :user }

  scenario 'User sign_out the application' do
    visit user_path(:user)

    click_button find('Logout')

    expect(page).to have_content('Sign In')
  end
end
