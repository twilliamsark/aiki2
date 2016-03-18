module HasVideos
  extend ActiveSupport::Concern

  SELECT_ANY = -1

  included do
    scope :distinct_model, -> { uniq }
    scope :default_order, -> { order(:name) }
  end

  def label
    "#{name}#{(self.respond_to?(:short_description) && short_description.present?) ? ' - ' + short_description : '' }"
  end

  def get_wazas(options={})
    user = options[:user]
    wazas = self.wazas.distinct_model
    wazas = wazas.select {|waza| VideoUtils.show_videos?(waza.videos, user)} if user
    wazas.flatten
  end

  module ClassMethods

    def get_wazas(current_user=nil)
      wazas = self.default_order.map do |a|
        a.get_wazas(user: current_user)
      end.flatten

      wazas.compact!
      Waza.build_selection(wazas.map(&:waza_formats).flatten.uniq, self)
    end

    def options_for_select(options={})
      options.reverse_merge!(include_any: true, exclusion_names: [])
      options[:exclusion_names] = [ options[:exclusion_names] ] if options[:exclusion_names].is_a? String

      initial_hash = (options[:include_any] && self != Kata) ? {'Any' => SELECT_ANY} : {}

      where = options[:exclusion_names].map{|n| "name != '#{n}'"}.join(' and ')
      self.where(where).default_order.to_a
        .inject(initial_hash) do |options_hash, format|
          options_hash[format.label] = format.id
          options_hash
        end
    end
  end

end
