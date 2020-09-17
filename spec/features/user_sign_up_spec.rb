require 'rails_helper'

RSpec.feature 'UserSignUps', type: :feature do
  let(:new_user) { build :user }

  scenario 'User visit sign up page, fills and submit the form to enter applications' do
    visit new_user_registration_path

    fill_in 'Name', with: new_user.name
    fill_in 'Email', with: new_user.email
    fill_in 'user_password', with: new_user.password
    fill_in 'user_password_confirmation', with: new_user.password

    click_button 'Sign Up'

    expect(page).to have_content('Expended')
  end
end
