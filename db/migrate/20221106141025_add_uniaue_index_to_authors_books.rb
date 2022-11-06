class AddUniaueIndexToAuthorsBooks < ActiveRecord::Migration[7.0]
  def change
    add_index :author_books, [:author_id, :book_id], unique: true
  end
end
