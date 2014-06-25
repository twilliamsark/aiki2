class AddDemoToUser < ActiveRecord::Migration
  def change
    add_column :users, :demo, :boolean, default: false
    add_column :users, :expires_on, :date, default: nil
  end
end
