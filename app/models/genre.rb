# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :books_genres
  has_many :books, through: :books_genres

  validates :name, uniqueness: { message: 'genre unique' }
  validates :name, presence: { message: 'Genre added' }
  validates :name, length: { maximum: 40 }
end
