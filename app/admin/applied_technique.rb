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
  permit_params :name, :technique_id, :attack_id, :stance_id, :direction_id, :related_id, :waza_id, :rank_id, :kata_id, :position, :on_test, :format_id, :attack_height_id, :description, :short_description, videos_attributes: [:id, :youtube_code, :primary, :description]
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
    column "Name", sortable: :name do |at|
      link_to(at.name, admin_applied_technique_path(at))
    end
    column :format, sortable: 'formats.name'
    column :on_test, sortable: true
    column "Rank" do |at|
      at.rank.nil? ? '' : link_to(at.rank.label, admin_rank_path(at.rank))
    end
    column "View in Library" do |at|
      if at.aiki_toho?
        link_to 'View Video', iaido_path(sort: 'format', applied_technique: at)
      else
        link_to 'View Video', aikido_path(sort: 'format', applied_technique: at)
      end
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
        row :format
        if at.aiki_toho?
          row "Kata (Aiki Toho only)" do |at|
            at.kata
          end
          row :position
        end
        row :waza
        row :attack_height
        row "Rank" do |at|
          at.rank.nil? ? '' : link_to(at.rank.label, admin_rank_path(at.rank))
        end
        row :on_test
        row :short_description
        row :description
      end
    end

    panel 'Related' do
      attributes_table_for at do
        row :related
      end
    end

    panel 'System' do
      attributes_table_for at do
        row :created_at
        row :updated_at
      end
    end
  end

  sidebar "Videos", only: [:show] do
    table_for(applied_technique.videos) do
      column "YouTube" do |video|
        link_to "#{video.youtube_code}#{video.primary? ? ' primary' : ''}#{video.description.present? ? ' ' + video.description : ''}", admin_applied_technique_video_path(applied_technique, video)
      end
    end
  end

  sidebar "View in Library", only: [:show] do
    if applied_technique.aiki_toho?
      link_to applied_technique.name, iaido_path(sort: 'format', applied_technique: applied_technique)
    else
      link_to applied_technique.name, aikido_path(sort: 'format', applied_technique: applied_technique)
    end
  end

  sidebar "Applied Techniques", only: [:show] do
    ul do
      li link_to("Applied Techniques (All)", admin_applied_techniques_path)
      li link_to("Applied Techniques (Aikido)", admin_applied_techniques_path(scope: 'aikido_techniques'))
      li link_to("Applied Techniques (Aiki Toho)", admin_applied_techniques_path(scope: 'iaido_techniques'))
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
      f.input :format
      f.input :waza
      f.input :attack_height
      f.input :rank
      f.input :on_test
      f.input :short_description
      f.input :description
    end
    f.inputs "For Aiki Toho Only" do
      f.input :kata
      f.input :position
    end
    f.inputs "Related" do
      f.input :related
    end
    f.inputs do
      f.has_many :videos, :allow_destroy => true, :heading => 'Videos' do |cf|
        cf.input :youtube_code
        cf.input :description
        cf.input :primary
      end
    end
    f.actions
  end
end
