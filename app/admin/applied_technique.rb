ActiveAdmin.register AppliedTechnique do


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
  permit_params :name, :technique_id, :attack_id, :stance_id, :direction_id, :related_id, :waza_id, :rank_id, :kata_id, :on_test, :format_id
  menu priority: 1
  scope :all
  scope :aikido_techniques
  scope :iaido_techniques
end
