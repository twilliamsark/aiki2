ActiveAdmin.register Rank do


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
  permit_params :name, :description, :belt, :position
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
end
