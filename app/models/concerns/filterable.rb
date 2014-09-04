module Filterable
  extend ActiveSupport::Concern

  included do
    after_save :update_waza_keywords
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

  def update_waza_keywords
    wazas.distinct.each(&:set_keywords)
  end
end
