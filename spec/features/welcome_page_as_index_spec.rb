require 'rails_helper'

RSpec.feature "WelcomePageAsIndices", type: :feature do
  scenario "User visits site, and sees a sign in button" do
    visit root_path
    expect(page).to have_link 'Sign In'
  end

  scenario "User visits site, and sees a sign up button" do
    visit root_path
    expect(page).to have_link 'Sign Up'
  end
end
