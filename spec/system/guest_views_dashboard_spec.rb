# frozen_string_literal: true

require "rails_helper"

describe "Guest views Dashboard" do
  scenario "Redirected to the login page" do
    visit dashboard_index_path

    expect(current_path).to eq(new_user_session_path)
  end
end
