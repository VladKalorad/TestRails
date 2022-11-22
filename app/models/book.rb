# frozen_string_literal: true

class Book < ApplicationRecord
  has_many :books_genres
  has_many :genres, through: :books_genres
  has_many :authors_books
  has_many :authors, through: :authors_books
  has_many :subscriptions

  validates :name, presence: { message: 'Book added' }
  validates :name, uniqueness: { message: 'unique' }
  validates :name, length: { minimum: 2 }
  validates :quantity, numericality: { only_integer: true }
end
