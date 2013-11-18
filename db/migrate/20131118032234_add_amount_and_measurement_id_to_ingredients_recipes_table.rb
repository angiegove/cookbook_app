class AddAmountAndMeasurementIdToIngredientsRecipesTable < ActiveRecord::Migration
  def change
    add_column :ingredients_recipes, :amount, :float
    add_column :ingredients_recipes, :measurement_id, :integer
  end
end
