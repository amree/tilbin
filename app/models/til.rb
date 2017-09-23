class Til < ApplicationRecord
  validates :notes, presence: true
  validates :title, presence: true

  before_save :build_slug
  before_save :build_notes_output

  protected

  def build_notes_output
    self.notes_html = MarkdownParser.process(notes)
  end

  def build_slug
    self.slug = title.parameterize
  end
end
