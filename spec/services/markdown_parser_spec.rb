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

    it "enables GFM when calling the markdown processor" do
      text = "sample text"
      options = { input: "GFM" }
      parser = double("Kramdown::Document")
      allow(parser).to receive(:to_html)

      expect(parser).to receive(:new).with(text, options).and_return(
        Kramdown::Document.new(text)
      )

      MarkdownParser.process(text, parser)
    end
  end
end
