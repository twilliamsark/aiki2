ActiveAdmin.register WazaFormat do
  permit_params :waza_id, :format_id, :rank_id, :on_test, :description, videos_attributes: [:id, :youtube_code, :primary, :visible, :for_demo, :description, :attack_height_id, :style_id, :sensei_id, :kata_id, :kata_number, :copyright, :_destroy]
  menu priority: 0

  config.sort_order = 'format_id_asc'

  index do
    column :id
    column :waza
    column :format
    column :rank
    column :on_test
    column 'View in Library' do |wf|
      link_to 'View Video', aikido_path(waza: wf.waza)
    end
    actions
  end

  show title: :name do |wf|
    panel 'Waza' do
      attributes_table_for wf do
        row "Stance" do |wf|
          wf.waza.stance
        end
        row "Attack" do |wf|
          wf.waza.attack
        end
        row "Technique" do |wf|
          wf.waza.technique
        end
        row "Direction" do |wf|
          wf.waza.direction
        end
      end
    end

    panel 'Waza Format' do
      attributes_table_for wf do
        row "Format" do |wf|
          wf.format
        end
        row "Rank" do |wf|
          wf.rank
        end
        row "On Test" do |wf|
          wf.on_test
        end
      end
    end

    panel 'System' do
      attributes_table_for wf do
        row :created_at
        row :updated_at
      end
    end

    panel 'Videos' do
      table_for(waza_format.videos) do
        column :youtube_code
        column :name
        column :description
        column "Format(s)" do |video|
          video.format_name
        end
        column :visible
        column :for_demo
        column "Watch" do |video|
          link_to 'Watch', aikido_path(waza: waza_format.waza, video: video)
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

  form do |f|
    f.inputs "Attributes" do
      f.input :waza
      f.input :format
      f.input :rank
      f.input :on_test
    end

    f.inputs do
      f.has_many :videos, :allow_destroy => true, :heading => 'Videos' do |cf|
        cf.input :youtube_code
        cf.input :description
        cf.input :visible
        cf.input :primary
        cf.input :for_demo
        cf.input :attack_height
        cf.input :style
        cf.input :sensei
        cf.input :kata
        cf.input :kata_number
        cf.input :copyright, :input_html => { :value => 'Aikido Center of San Antonio, Copyright 2015' }
      end
    end
    f.actions
  end


end
