require "rails_helper"

describe MarkdownParser, type: :model do
  describe "process" do
    it "generate the correct markdown format" do
      text = "This *is* markdown text"

      output = MarkdownParser.process(text)

      expect(output).to eq(
        "<p>This <em>is</em> markdown text</p>\n"
      )
    end
  end
end
