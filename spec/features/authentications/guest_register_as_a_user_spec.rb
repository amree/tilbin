# frozen_string_literal: true

require "rails_helper"

feature "Guest register as a user" do
  scenario "successfully redirected" do
    visit new_user_registration_path

    fill_in "Email", with: "john@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    expect(page).to have_content t("devise.registrations.signed_up")
  end
end
