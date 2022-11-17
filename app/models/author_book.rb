# frozen_string_literal: true

class AuthorBook < ApplicationRecord
  belongs_to :book
  belongs_to :author

  validates :book, uniqueness: { scope: :author, message: 'must be unique' }
  validates :book_id, presence: true
  validates :author_id, presence: true
end
