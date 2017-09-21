class Til < ApplicationRecord
  before_save :build_notes_output

  protected

  def build_notes_output
    self.notes_html = notes
  end
end
