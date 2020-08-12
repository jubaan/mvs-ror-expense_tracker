require 'rails_helper'

RSpec.feature 'UserSignOuts', type: :feature do
  include Warden::Test::Helpers
  let(:user) { create :user }

  scenario 'User sign_out the application' do
    login_as(user)
    logout(:user)
    visit user_path(user)
    expect(page).to have_content('sign in')
  end
end
