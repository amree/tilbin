# frozen_string_literal: true

class AddUserIdToTils < ActiveRecord::Migration[5.1]
  def change
    add_reference :tils, :user, after: :id, foreign_key: true
  end
end
