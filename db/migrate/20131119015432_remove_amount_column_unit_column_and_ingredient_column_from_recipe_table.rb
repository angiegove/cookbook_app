class RemoveAmountColumnUnitColumnAndIngredientColumnFromRecipeTable < ActiveRecord::Migration
  def change
    remove_column :recipes, :amount
    remove_column :recipes, :unit
    remove_column :recipes, :ingredient
  end
end
