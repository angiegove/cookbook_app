class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.new
    @recipe.ingredients.measurements.new
  end

  def create
    recipe = Recipe.create params[:recipe]
    redirect_to recipe_path(recipe.id)
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    recipe = Recipe.find params[:id]
    recipe.update_attributes params[:recipe]
    redirect_to recipe_path(recipe.id)
  end

  def destroy
    recipe = Recipe.find params[:id]
    recipe.destroy
    redirect_to recipes_path
  end


end
