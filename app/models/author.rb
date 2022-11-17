# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :authors_books
  has_many :book, through: :authors_books

  validates :name, presence: true
  validates_uniqueness_of :name
end
