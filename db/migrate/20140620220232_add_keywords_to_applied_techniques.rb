class AddKeywordsToAppliedTechniques < ActiveRecord::Migration
  def change
    add_column :applied_techniques, :keywords, :text
  end
end
