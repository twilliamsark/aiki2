ActiveAdmin.register Waza do


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
  permit_params :name, :description, :short_description
  menu parent: "Attributes"
  config.sort_order = "name_asc"

  filter :name
  filter :description

  index do
    id_column
    column :name
    column :description
    actions
  end
end
