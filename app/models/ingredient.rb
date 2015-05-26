class Ingredient < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients

  def to_s
    name
  end
end
