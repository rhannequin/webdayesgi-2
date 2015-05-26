class Alcohol < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def to_s
    name
  end
end
