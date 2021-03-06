# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Profile page', type: :feature do
  before do
    register
  end

  it 'allows user to add additional information' do
    click_link "John Doe"
    click_link "Edit Profile"

    fill_in "Bio", with: "This is my bio"
    fill_in "Age", with: "24"
    fill_in "Home town", with: "My town"
    fill_in "Education", with: "Some school"
    fill_in "Workplace", with: "Home"
    find(:select).find(:option, "Single").select_option
    click_button "Save changes"

    expect(page).to have_content("This is my bio")
    expect(page).to have_content("24")
    expect(page).to have_content("My town")
    expect(page).to have_content("Some school")
    expect(page).to have_content("Home")
    expect(page).to have_content("Single")
  end

  it 'allows user to edit profile' do
    click_link "John Doe"
    click_link "Edit Profile"

    fill_in "Bio", with: "This is my bio"
    click_button "Save changes"

    click_link "Edit Profile"

    fill_in "Bio", with: "This bio is way better"
    click_button "Save changes"

    expect(page).to have_content("This bio is way better")
  end

  it 'only displays the label if the information is present' do
    click_link "John Doe"
    click_link "Edit Profile"

    fill_in "Bio", with: "This is my bio"
    click_button "Save changes"

    click_link "Edit Profile"

    fill_in "Bio", with: ""
    click_button "Save changes"

    expect(page).not_to have_content("Bio:")
  end

  it 'can only be edited by the owner of the profile' do
    click_link "John Doe"
    click_link "Edit Profile"

    fill_in "Bio", with: "This is my bio"
    click_button "Save changes"

    click_link "Log Out"

    register_second_user

    visit "/users/1"

    expect(page).not_to have_content("Edit Profile")
  end
end
