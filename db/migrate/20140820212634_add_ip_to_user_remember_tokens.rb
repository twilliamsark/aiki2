class AddIpToUserRememberTokens < ActiveRecord::Migration
  def change
    add_column :user_remember_tokens, :ip, :string
    add_column :user_remember_tokens, :signed_out, :boolean, default: false
    add_column :user_remember_tokens, :expires_at, :datetime

    add_index :user_remember_tokens, :signed_out
  end
end
