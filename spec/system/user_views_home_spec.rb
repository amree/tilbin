# frozen_string_literal: true

require "rails_helper"

describe "User creates TIL" do
  it "successfully creates a new TIL" do
    til = FactoryBot.create(:til)

    visit root_path

    expect(page).to have_content(til.title)
  end
end
