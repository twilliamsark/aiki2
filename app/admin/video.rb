ActiveAdmin.register Video do
  config.clear_action_items!

  permit_params :applied_technique_id, :youtube_code, :primary, :visible, :for_demo, :description, :name
  menu priority: 2

  index do
    column :id
    column "Applied Technique" do |video|
      link_to(video.applied_technique.name, admin_applied_technique_path(video.applied_technique))
    end
    column :name
    column :format
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
        row :applied_technique
        row :name
        row :format
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
