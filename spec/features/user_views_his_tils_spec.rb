# frozen_string_literal: true

require "rails_helper"

feature "User creates TIL" do
  scenario "successfully creates a new TIL" do
    til = FactoryBot.create(:til)
    other_til = FactoryBot.create(:til)
    login_as(til.user)

    visit tils_path

    expect(page).to have_content(til.title)
    expect(page).to_not have_content(other_til.title)
  end
end
