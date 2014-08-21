ActiveAdmin.register UserRememberToken do
  config.clear_action_items!

  permit_params :signed_out_at, :expires_at
  menu priority: 9

  scope :all
  scope :good
  scope :signed_out
  scope :expired

  index do
    selectable_column
    id_column
    column :user
    column :created_at
    column :expires_at
    column :signed_out_at
    actions
  end
end
