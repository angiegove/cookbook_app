class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create params[:recipe]
    params[:new_recipe_ingredients].each do |id, ing|
      ing['recipe_id'] = recipe.id
      RecipeIngredient.create(ing)
    end
    redirect_to recipe_path(recipe.id)
  end

  def show
    @recipe = Recipe.find params[:id]
    respond_to do |format|
      format.html
      format.pdf do
        recipe = render_to_string(:action => "show.html.erb", :layout => false)
        recipe = PDFKit.new(recipe)
        recipe = recipe.to_pdf
        send_data recipe, :filename => "recipe.pdf", :type => 'application/pdf'
      end
    end
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    recipe = Recipe.find params[:id]
    recipe.update_attributes params[:recipe]

    params[:recipe_ingredients].each do |id, ing|
      recipe_ingredient = RecipeIngredient.find id
      recipe_ingredient.update_attributes(ing)
    end
    if params[:new_recipe_ingredients].present?
      params[:new_recipe_ingredients].each do |id, ing|
        ing['recipe_id'] = recipe.id
        RecipeIngredient.create(ing)
      end
    end
    redirect_to recipe_path(recipe.id)
  end

  def destroy
    recipe = Recipe.find params[:id]
    recipe.destroy
    redirect_to recipes_path
  end


  def recipes_ingredients_destroy
    recipe_ingredient = RecipeIngredient.find params[:id]
    recipe_ingredient.destroy
    render :json => {
      status: "hey that went great"
    }
  end


end
