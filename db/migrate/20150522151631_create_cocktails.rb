class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :slug
      t.references :alcohol, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :cocktails, :slug, unique: true
  end
end
