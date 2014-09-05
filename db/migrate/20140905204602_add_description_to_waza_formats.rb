class AddDescriptionToWazaFormats < ActiveRecord::Migration
  def change
    add_column :waza_formats, :description, :string
  end
end
