class Alcohol < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def to_s
    name
  end

  def should_generate_new_friendly_id?
    name_changed? || super
  end
end
