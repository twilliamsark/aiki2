ActiveAdmin.register Video do
  menu false
  belongs_to :applied_technique

  permit_params :applied_technique_id, :youtube_code, :primary, :description
  menu priority: 0

  show do |at|
    panel 'Details' do
      attributes_table_for at do
        row :id
        row :applied_technique
        row :youtube_code
        row :pirmary
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
