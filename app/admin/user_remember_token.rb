ActiveAdmin.register UserRememberToken do
  config.clear_action_items!

  permit_params :signed_out, :expires_at
  menu priority: 9

  scope :signed_in
  scope :signed_out
  scope :not_expired
  scope :expired

  index do
    selectable_column
    id_column
    column :user
    column :created_at
    column :expires_at
    column :signed_out
    actions
  end
end
