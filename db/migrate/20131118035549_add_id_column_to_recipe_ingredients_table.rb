class AddIdColumnToRecipeIngredientsTable < ActiveRecord::Migration
  def change
    add_column :recipe_ingredients, :id, :primary_key
  end
end
