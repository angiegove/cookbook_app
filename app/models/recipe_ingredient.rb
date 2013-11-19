# == Schema Information
#
# Table name: recipe_ingredients
#
#  ingredient_id  :integer
#  recipe_id      :integer
#  amount         :float
#  measurement_id :integer
#  id             :integer          not null, primary key
#

class RecipeIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :amount, :measurement_id, :recipe_id

  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :measurement

end
