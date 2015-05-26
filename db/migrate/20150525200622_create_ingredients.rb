class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :ingredients, :slug, unique: true
  end
end
