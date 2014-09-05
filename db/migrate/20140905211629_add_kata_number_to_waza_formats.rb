class AddKataNumberToWazaFormats < ActiveRecord::Migration
  def change
    add_column :waza_formats, :kata_number, :integer
  end
end
