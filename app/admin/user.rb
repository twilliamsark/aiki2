ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :admin

  batch_action :toggle_admin do |selection|
    User.find(selection).each do |user|
      user.toggle!(:admin)
    end
    redirect_to :back
  end

  index do
    selectable_column
    id_column
    column :email
    column :admin
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :admin
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin
    end
    f.actions
  end

  show title: :email do |at|
    panel 'Details' do
      attributes_table_for at do
        row :id
        row :email
        row :admin
        row :sign_in_count
        row :current_sign_in_at
        row :last_sign_in_at
        row :current_sign_in_ip
        row :last_sign_in_ip
        row :created_at
        row :updated_at
      end
    end
  end
end
