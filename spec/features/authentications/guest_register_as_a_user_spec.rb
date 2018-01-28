# frozen_string_literal: true

require "rails_helper"

feature "Guest register as a user" do
  scenario "successfully redirected" do
    visit new_user_registration_path

    fill_in "Username", with: "luffy"
    fill_in "Name", with: "Monkey D. Luffy"
    fill_in "Email", with: "luffy@onepiece.com"
    fill_in "Password", with: "password", match: :prefer_exact
    fill_in "Password confirmation", with: "password", match: :prefer_exact
    click_button "Create an account"

    expect(page).to have_content t("devise.registrations.signed_up")
  end
end
