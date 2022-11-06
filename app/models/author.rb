class Author < ApplicationRecord
  has_many :authors_books
  has_many :book, through: :authors_books

  validates :name, presence: true
end
