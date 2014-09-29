ActiveAdmin.register Waza do
  permit_params :name, :technique_id, :attack_id, :stance_id, :direction_id, :position, :on_test, :description, :short_description
  menu priority: 0

  config.sort_order = "name_asc"

  index do
    column "Name", sortable: :name do |at|
      link_to(at.name, admin_waza_path(at))
    end
    column :stance
    column :attack
    column :technique
    column :direction
    column "View in Library" do |at|
      link_to 'View Video', aikido_path(waza: at, sort_type: "Technique")
    end
    actions
  end

  show title: :name do |at|
    panel 'Technique' do
      attributes_table_for at do
        row :id
        row :name
        row :stance
        row :attack
        row :technique
        row :direction
      end
    end

    panel 'Attributes' do
      attributes_table_for at do
        row :short_description
        row :description
      end
    end

    panel 'System' do
      attributes_table_for at do
        row :created_at
        row :updated_at
      end
    end

    panel 'Videos' do
      table_for(waza.videos) do
        column :youtube_code
        column :name
        column :description
        column :visible
        column :for_demo
        column "Watch" do |video|
          link_to 'Watch', aikido_path(waza: waza, video: video)
        end
        column "View" do |video|
          link_to "View", admin_video_path(video)
        end
        column "Edit" do |video|
          link_to "Edit", edit_admin_video_path(video)
        end
      end
    end
  end

  sidebar "View in Library", only: [:show] do
    link_to waza.name, aikido_path(waza: waza, sort_type: "Technique")
  end

  form do |f|
    f.inputs "Technique" do
      f.input :name
      f.input :stance
      f.input :attack
      f.input :technique
      f.input :direction
    end
    f.inputs "Attributes" do
      f.input :short_description
      f.input :description
    end
    f.inputs "Related" do
      f.input :related
    end
    f.actions
  end
end
