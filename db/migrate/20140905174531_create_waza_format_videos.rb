class CreateWazaFormatVideos < ActiveRecord::Migration
  def change
    create_table :waza_format_videos do |t|
      t.references :waza_format, index: true
      t.references :video, index: true

      t.timestamps
    end
  end
end
