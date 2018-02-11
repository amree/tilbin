# frozen_string_literal: true

require "rails_helper"

describe "Guest accessing protected pages" do
  scenario "to create new TIL will be redirected to sign in page" do
    visit new_til_path

    expect(page).to have_content t("devise.failure.unauthenticated")
    expect(current_path).to eq new_user_session_path
  end
end
