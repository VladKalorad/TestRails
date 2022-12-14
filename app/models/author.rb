# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :authors_books
  has_many :books, through: :authors_books

  validates :name, presence: true
  validates :name, uniqueness: { message: 'must be added' }
end
