class CreateUserRememberTokens < ActiveRecord::Migration
  def change
    create_table :user_remember_tokens do |t|
      t.string :remember_token
      t.references :user, index: true

      t.timestamps
    end
  end
end
