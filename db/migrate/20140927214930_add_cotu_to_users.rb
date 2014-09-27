class AddCotuToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cotu, :boolean, default: false
  end
end
