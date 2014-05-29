ActiveAdmin.register AppliedTechnique do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  permit_params :name, :technique_id, :attack_id, :stance_id, :direction_id, :related_id, :waza_id, :rank_id, :kata_id, :on_test, :format_id, :attack_height_id
  menu priority: 1

  scope :all
  scope :aikido_techniques
  scope :iaido_techniques

  config.sort_order = "name_asc"

  controller do
    def scoped_collection
      resource_class.includes(:format)
    end
  end

  index do
    column "Name", sortable: :name do |applied_technique|
      link_to(applied_technique.name, admin_applied_technique_path(applied_technique))
    end
    column :format, sortable: 'formats.name'
    column :on_test, sortable: true
    column "Rank" do |applied_technique|
      applied_technique.rank.label
    end
    actions
  end

  sidebar "Videos", only: [:show] do
    # ul do
    #   li link_to "Videos", admin_applied_technique_videos_path(applied_technique)
    # end
    table_for(applied_technique.videos) do
      column "YouTube" do |video|
        link_to "#{video.youtube_code}", admin_applied_technique_video_path(applied_technique, video)
      end
    end
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
      f.input :waza
      f.input :attack_height
      f.input :format
      f.input :rank
      f.input :on_test
      f.input :short_description
      f.input :description
    end
    f.inputs "Related" do
      f.input :related
    end
    f.inputs do
      f.has_many :videos, :allow_destroy => true, :heading => 'Videos' do |cf|
        cf.input :youtube_code
      end
    end
    f.actions
  end
end
