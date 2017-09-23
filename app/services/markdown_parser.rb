class MarkdownParser
  def initialize(text, parser)
    @text = text
    @parser = parser
  end

  def run
    parser.new(text, input: "GFM").to_html
  end

  def self.process(text, parser = Kramdown::Document)
    MarkdownParser.new(text, parser).run
  end

  private

  attr_reader :text, :parser
end
