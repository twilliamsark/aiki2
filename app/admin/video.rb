ActiveAdmin.register Video do
  config.clear_action_items!

  permit_params :waza_id, :youtube_code, :primary, :visible, :for_demo, :description, :attack_height_id, :sensei_id, :style_id
  menu priority: 2

  index do
    column :id
    column :name
    column "Waza Format" do |video|
      wf = video.first_waza_format
      if !wf.nil?
        link_to(video.first_waza_format.name, admin_waza_format_path(video.first_waza_format))
      else
        'n/a'
      end
    end
    column :youtube_code
    column :sensei
    column :visible
    column :primary
    column :for_demo
    actions
  end

  show do |at|
    panel 'Details' do
      attributes_table_for at do
        row :id
        row :waza
        row :youtube_code
        row :visible
        row :primary
        row :for_demo
        row :description
        row :sensei
        row :attack_height
        row :style
      end
    end

    panel 'System' do
      attributes_table_for at do
        row :created_at
        row :updated_at
      end
    end
  end
end
