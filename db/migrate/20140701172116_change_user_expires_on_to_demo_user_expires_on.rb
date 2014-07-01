class ChangeUserExpiresOnToDemoUserExpiresOn < ActiveRecord::Migration
  def change
    rename_column :users, :expires_on, :demo_user_expires_on
  end
end
