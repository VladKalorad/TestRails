# frozen_string_literal: true

class AddUniaueIndexToAuthorsBooks < ActiveRecord::Migration[7.0]
  def change
    add_index :author_books, %i[author_id book_id], unique: true
  end
end
