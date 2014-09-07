class CreateUserNotes < ActiveRecord::Migration
  def change
    create_table :user_notes do |t|
      t.text :note
      t.references :user, index: true
      t.references :waza_format, index: true

      t.timestamps
    end
  end
end
