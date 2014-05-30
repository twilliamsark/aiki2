ActiveAdmin.register Direction do
  permit_params :name, :short_description, :description
  menu parent: "Attributes"

  config.sort_order = "name_asc"

  filter :name
  filter :short_description
  filter :description

  index do
    id_column
    column :name
    column :short_description
    column :description
    actions
  end

  show title: :name do |at|
    panel 'Details' do
      attributes_table_for at do
        row :id
        row :name
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
  end

end
