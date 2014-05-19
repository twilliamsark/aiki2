class CreateKata < ActiveRecord::Migration
  def change
    create_table :kata do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_column :applied_techniques, :kata_id, :integer
    add_index :applied_techniques, :kata_id
  end
end
