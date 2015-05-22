class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.references :alcohol, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
