class CreateTils < ActiveRecord::Migration[5.1]
  def change
    create_table :tils do |t|
      t.string :slug
      t.string :title
      t.text :notes
      t.text :notes_html
      t.datetime :published_at

      t.timestamps
    end
  end
end
