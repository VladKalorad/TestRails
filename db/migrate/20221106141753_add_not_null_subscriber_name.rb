class AddNotNullSubscriberName < ActiveRecord::Migration[7.0]
  def change
    change_column :subscribers, :name, :string, null: false
  end
end
