ActiveAdmin.register UserNote do
  config.clear_action_items!
  permit_params :user, :waza_format, :note
  menu parent: "Notes"
end
