class IngredientsMeasurements < ActiveRecord::Migration
  def change
    create_table :ingredients_measurements, :id => false do |t|
      t.integer :ingredient_id
      t.integer :measurement_id
    end
  end
end
