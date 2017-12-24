# frozen_string_literal: true

require "rails_helper"

feature "User creates TIL" do
  scenario "successfully creates a new TIL" do
    user = FactoryBot.create(:user)
    login_as(user)

    visit new_til_path
    fill_in "Title", with: "Something as the title"
    fill_in "Notes", with: "This is a *bold* text"
    click_button "Publish"

    expect(current_path).to eq "/tils/#{Til.last.id}"
  end
end
