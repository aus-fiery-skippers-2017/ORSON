class AddCustomFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :location, :string
    add_column :users, :bio, :text
    add_column :users, :trusted, :boolean, default: false
  end
end
