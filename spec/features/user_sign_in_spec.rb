require 'rails_helper'

RSpec.feature "UserSignIns", type: :feature do
  let(:user) { create :user }

  scenario 'User visit sign in page, fills and submit the form to enter applications' do
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password

    click_button 'Sign In'

    expect(page).to have_content('Expended')
  end
end
