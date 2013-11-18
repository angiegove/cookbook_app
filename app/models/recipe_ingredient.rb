class RecipeIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :amount, :measurement_id, :recipe_id

  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :measurement

end
