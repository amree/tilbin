# frozen_string_literal: true

require "rails_helper"

feature "User creates TIL" do
  scenario "successfully creates a new TIL" do
    til = FactoryBot.create(:til)

    visit root_path

    expect(page).to have_content(til.title)
  end
end
