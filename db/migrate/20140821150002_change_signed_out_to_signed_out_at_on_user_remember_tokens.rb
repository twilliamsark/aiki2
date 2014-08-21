class ChangeSignedOutToSignedOutAtOnUserRememberTokens < ActiveRecord::Migration
  def up
    remove_index :user_remember_tokens, :signed_out
    remove_column :user_remember_tokens, :signed_out
    add_column :user_remember_tokens, :signed_out_at, :datetime
  end

  def down
    remove_column :user_remember_tokens, :signed_out_at
    add_column :user_remember_tokens, :signed_out, :boolean, default: false
    add_index :user_remember_tokens, :signed_out
  end
end
