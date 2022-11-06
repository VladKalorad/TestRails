class AddNotNulQuantityBook < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :quantity, :integer, null: false
  end
end
