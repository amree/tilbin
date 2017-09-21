require "rails_helper"

describe Til, type: :model do
  describe "#notes_html" do
    it "generate notes_html on save" do
      til = build(:til)

      til.save

      expect(til.notes_html).not_to be_nil
    end
  end
end
