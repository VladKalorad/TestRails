class AddNotNullNameAuthor < ActiveRecord::Migration[7.0]
  def change
    change_column :authors, :name, :string, null: false
  end
end
