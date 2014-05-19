class CreateVideos < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :name
      t.string :description
      t.string :belt
      t.timestamps
    end

    create_table :techniques do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :attacks do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :stances do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :wazas do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :directions do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :applied_techniques do |t|
      t.references :technique
      t.references :attack
      t.references :stance
      t.references :waza
      t.references :rank
      t.references :direction
      t.string :name
      t.timestamps
    end
    add_index :applied_techniques, :technique_id
    add_index :applied_techniques, :attack_id
    add_index :applied_techniques, :stance_id
    add_index :applied_techniques, :waza_id
    add_index :applied_techniques, :rank_id
    add_index :applied_techniques, :direction_id

    create_table :videos do |t|
      t.references :applied_technique
      t.string :youtube_code, default: 'n/a'
      t.timestamps
    end
    add_index :videos, :applied_technique_id
  end
end
