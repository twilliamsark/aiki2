ActiveAdmin.register Rank do
  permit_params :name, :description, :belt, :position, :short_description
  menu parent: "Attributes"

  config.sort_order = "position_asc"

  filter :name
  filter :description
  filter :belt

  index do
    id_column
    column :name
    column :description
    column :belt
    column :position
    actions
  end

  show title: :name do |at|
    panel 'Details' do
      attributes_table_for at do
        row :id
        row :name
        row :description
        row :belt
        row "Position In List" do at
          at.position
        end
        row :short_description
      end
    end

    panel 'System' do
      attributes_table_for at do
        row :created_at
        row :updated_at
      end
    end

    panel 'Videos' do
      table_for(rank.videos) do
        column :youtube_code
        column :name
        column :description
        column "Format(s)" do |video|
          video.format_name
        end
        column :visible
        column :for_demo
        column "Watch" do |video|
          link_to 'Watch', aikido_path(waza: video.wazas.first, video: video)
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
end
