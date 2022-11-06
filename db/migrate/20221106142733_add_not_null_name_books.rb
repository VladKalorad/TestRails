class AddNotNullNameBooks < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :name, :string, null: false
  end
end
