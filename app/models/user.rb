# frozen_string_literal: true

class User < ApplicationRecord
  devise(
    :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable
  )

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :name, presence: true

  has_many :tils
end
