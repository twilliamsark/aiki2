ActiveAdmin.register Video do
  config.clear_action_items!

  permit_params :waza_id, :youtube_code, :primary, :visible, :for_demo, :description
  menu priority: 2

  index do
    column :id
    column :name
    column "Waza" do |video|
      waza = video.first_waza
      if !waza.nil?
        link_to(video.first_waza.name, admin_waza_path(video.first_waza))
      else
        'n/a'
      end
    end
    column :youtube_code
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
