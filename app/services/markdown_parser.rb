class MarkdownParser
  def initialize(text)
    @text = text
  end

  def run
    Kramdown::Document.new(text).to_html
  end

  def self.process(text)
    MarkdownParser.new(text).run
  end

  private

  attr_reader :text
end
