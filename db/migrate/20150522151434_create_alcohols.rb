class CreateAlcohols < ActiveRecord::Migration
  def change
    create_table :alcohols do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :alcohols, :slug, unique: true
  end
end
