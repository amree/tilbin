# frozen_string_literal: true

require "rails_helper"

describe User, type: :model do
  it { should have_many(:tils) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:name) }
end
