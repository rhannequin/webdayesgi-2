class CreateCocktailIngredients < ActiveRecord::Migration
  def change
    create_table :cocktail_ingredients do |t|
      t.references :cocktail, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
