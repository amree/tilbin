# frozen_string_literal: true

require "rails_helper"

describe "User views Dashboard" do
  scenario "Ables to view the dashbord page" do
    user = FactoryBot.create(:user)
    login_as(user)

    visit dashboard_index_path

    expect(current_path).to eq(dashboard_index_path)
  end
end
