# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books

  validates :name, presence: true
  validates :name, uniqueness: { message: 'must be added' }
end
