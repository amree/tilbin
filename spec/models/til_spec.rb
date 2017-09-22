require "rails_helper"

describe Til, type: :model do
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
end
