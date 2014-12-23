ActiveAdmin.register ReviewNote do
  config.clear_action_items!
  permit_params :user, :waza_format, :note
  menu parent: "Notes"

  config.sort_order = "id_desc"

  scope :most_recent do |review_notes|
    review_notes.by_id
  end
  scope :by_user
  scope :by_waza_format

  filter :user
  filter :waza_format
  filter :note

  index do
    id_column
    column :user
    column :waza_format
    column 'Note' do |review_note|
      review_note.note.truncate(60, seperator: ' ')
    end
    actions
  end

  show do |note|
    panel 'Details' do
      attributes_table_for note do
        row :id
        row :user
        row :waza_format
        row :note
      end
    end

    panel 'System' do
      attributes_table_for note do
        row :created_at
        row :updated_at
      end
    end
  end

  form do |f|
    f.inputs "Note" do
      f.input :user
      f.input :waza_format
      f.input :note
    end
    f.actions
  end
end
