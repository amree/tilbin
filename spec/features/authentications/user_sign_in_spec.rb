# frozen_string_literal: true

require "rails_helper"

feature "User sign in" do
  scenario "successfully redirected" do
    user = create(:user, password: "password")

    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Log in"

    expect(page).to have_content t("devise.sessions.signed_in")
  end
end
