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

  scenario "User clicks on sign_up button and is taken to sign_up page" do
    visit root_path
    click_on 'Sign In'

    expect(page).to have_content('Email')
  end

  scenario "User clicks on sign_in button and is taken to sign_in page" do
    visit root_path
    click_on 'Sign Up'

    expect(page).to have_content('Email')
  end
end
