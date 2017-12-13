# frozen_string_literal: true

require "rails_helper"

describe Til, type: :model do
  it { should validate_presence_of(:notes) }
  it { should validate_presence_of(:title) }

  describe "#notes_html" do
    it "generates notes_html on save" do
      til = build(:til)

      til.save

      expect(til.notes_html).not_to be_nil
    end

    it "generates the correct output" do
      til = build(:til, notes: "This is **bold**")

      til.save

      expect(til.notes_html).to eq(
        "<p>This is <strong>bold</strong></p>\n"
      )
    end
  end

  describe "#slug" do
    it "generates slug based on the title" do
      til = build(:til)

      til.save

      expect(til.slug).to eq til.title.parameterize
    end
  end
end
