class IngredientsController < ApplicationController

  def list
    # render :text => ["apple", "orange", "banana"]
    render :json => {:suggestions => Ingredient.where('name ILIKE ?', '%' + params[:query] + '%' ) }
  end
end
