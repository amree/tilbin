require "rails_helper"

feature "User create TIL" do
  scenario "successfully create a new TIL" do
    visit new_til_path

    fill_in "Title", with: "Something as the title"
    fill_in "Notes", with: "This is a *bold* text"
    click_button "Publish"

    expect(current_path).to include "/tils/#{Til.last.id}"
  end
end
