class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create params[:recipe]
    if params[:new_recipe_ingredients].present?
      params[:new_recipe_ingredients].each do |id, ing|
        ing['recipe_id'] = recipe.id
        RecipeIngredient.create(ing) if ing[:ingredient_id]
      end
    end
    @current_user.cookbooks.first.recipes << recipe
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
    if params[:new_recipe_ingredients].present?
      params[:recipe_ingredients].each do |id, ing|
        recipe_ingredient = RecipeIngredient.find id
        recipe_ingredient.update_attributes(ing)
      end
      params[:new_recipe_ingredients].each do |id, ing|
        ing['recipe_id'] = recipe.id
        RecipeIngredient.create(ing) if ing[:ingredient_id]
      end
    end
    # Create a new cookbook and attach recipe if requested
    if params[:new_cookbook_title].present?
      new_cookbook = Cookbook.create :title => params[:new_cookbook_title], :user_id => @current_user.id
      if params[:new_cookbook_include].present?
        new_cookbook.recipes << recipe
      end
    end
    redirect_to recipe_path(recipe.id)
  end

  def destroy
    recipe = Recipe.find params[:id]
    recipe.destroy
    redirect_to cookbooks_path
  end


  def recipes_ingredients_destroy
    recipe_ingredient = RecipeIngredient.find params[:id]
    recipe_ingredient.destroy
    render :json => {
      status: "hey that went great"
    }
  end


end
