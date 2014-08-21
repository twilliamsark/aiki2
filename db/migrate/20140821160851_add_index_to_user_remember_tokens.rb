class AddIndexToUserRememberTokens < ActiveRecord::Migration
  def up
    add_index :user_remember_tokens, [:signed_out_at, :remember_token, :expires_at], name: 'index_urt_search'
  end

  def down
    remove_index :user_remember_tokens, name: 'index_urt_search'
  end
end
