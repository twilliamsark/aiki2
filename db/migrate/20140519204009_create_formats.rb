class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_column :applied_techniques, :format_id, :integer
    add_index :applied_techniques, :format_id
  end
end
