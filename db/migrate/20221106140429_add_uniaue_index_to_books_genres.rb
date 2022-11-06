class AddUniaueIndexToBooksGenres < ActiveRecord::Migration[7.0]
  def change
    add_index :books_genres, [:genre_id, :book_id], unique: true
  end
end
