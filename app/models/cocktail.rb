class Cocktail < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  belongs_to :alcohol
  has_many :cocktail_ingredients
  has_many :ingredients, through: :cocktail_ingredients
end
