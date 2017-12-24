# frozen_string_literal: true

class Til < ApplicationRecord
  belongs_to :user

  validates :notes, presence: true
  validates :title, presence: true
  validates :user, presence: true

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
