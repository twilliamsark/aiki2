ActiveAdmin.register WazaFormat do
  permit_params :waza_id, :format_id, :rank_id, :on_test, :kata_id
  menu priority: 0

  index do
    column :id
    column :waza
    column :format
    column :rank
    column :on_test
    column :kata
    actions
  end

end
