class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :duration
      t.string :amount
      t.string :unit
      t.string :ingredient
      t.text :instructions
      t.text :image
      t.text :comment

      t.timestamps
    end
  end
end
