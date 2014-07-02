module Filterable
  extend ActiveSupport::Concern

  included do
    after_save :update_applied_technuque_keywords
  end

  def label
    "#{name}#{short_description.present? ? ' - ' + short_description : '' }"
  end

  def keywords
    words = []
    fields = [:name]
    fields << :short_description if self.respond_to? :short_description

    fields.each do |field|
      if self.send(field).present?
        value = self.send(field).downcase
        words << value
        value_no_space = value.gsub(/\s/,'')
        words << value_no_space if value != value_no_space
      end
    end

    words.join(' ')
  end

  def update_applied_technuque_keywords
    applied_techniques.each(&:set_keywords)
  end

  def to_hash
    hash = {id: id, name: name}
    hash[:short_description] = short_description if self.respond_to? :short_description
    hash[:description] = description if self.respond_to? :description
    hash
  end
end
