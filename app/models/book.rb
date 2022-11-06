class Book < ApplicationRecord
  has_many :books_genres
  has_many :genre, through: :books_genres
  has_many :books_authors
  has_many :author, through: :books_authors
  has_many :subscriptions
  has_many :subscriber, through: :subscriptions

  validates :name, presence: {message: 'Book added'}
  validates :name, uniqueness: {message: 'Name unique'}
  validates :name, length: {minimum: 2}
  validates :quantity, numericality: {only_integer: true}
end
