class Ingredient < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients

  def to_s
    name
  end

  def should_generate_new_friendly_id?
    name_changed? || super
  end
end
