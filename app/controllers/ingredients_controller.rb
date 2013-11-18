class IngredientsController < ApplicationController

  def list

    render :text => Ingredient.pluck(:name)
  end
end
