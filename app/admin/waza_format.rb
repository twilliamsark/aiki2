ActiveAdmin.register WazaFormat do
  permit_params :waza_id, :format_id, :rank_id, :on_test, :description
  menu priority: 0

  config.sort_order = 'format_id_asc'

  index do
    column :id
    column :waza
    column :format
    column :rank
    column :on_test
    column 'View in Library' do |wf|
      link_to 'View Video', aikido_path(waza: wf.waza)
    end
    actions
  end

end
