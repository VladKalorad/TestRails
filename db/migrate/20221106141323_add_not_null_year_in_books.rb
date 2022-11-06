class AddNotNullYearInBooks < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :year, :string, null: false
  end
end
