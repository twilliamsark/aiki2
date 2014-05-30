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
  end
end
