ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :admin, :demo, :demo_user_expires_on
  menu priority: 3

  batch_action :toggle_admin do |selection|
    User.find(selection).each do |user|
      user.toggle!(:admin)
    end
    redirect_to :back
  end

  batch_action :toggle_demo do |selection|
    User.find(selection).each do |user|
      user.toggle!(:demo)
    end
    redirect_to :back
  end

  batch_action :toggle_reviewer do |selection|
    User.find(selection).each do |user|
      user.toggle!(:reviewer)
    end
    redirect_to :back
  end

  index download_links: false do
    selectable_column
    id_column
    column :email
    column :admin
    column :reviewer
    column :demo
    column :demo_user_expires_on
    column :current_sign_in_at
    column :sign_in_count
    column :password_reset_token
    column :password_reset_sent_at
    actions
  end

  filter :email
  filter :admin
  filter :reviewer
  filter :demo
  filter :current_sign_in_at
  filter :sign_in_count

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin
      f.input :reviewer
      f.input :demo
      f.input :demo_user_expires_on
    end
    f.actions
  end

  show title: :email do |at|
    panel 'Details' do
      attributes_table_for at do
        row :id
        row :email
        row :admin
        row :reviewer
        row :demo
        row :demo_user_expires_on
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
