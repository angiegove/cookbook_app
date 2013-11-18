class CookbooksController < ApplicationController

  def index
    if @current_user.is_admin?
      @cookbooks = Cookbook.all
    else
      @cookbooks = @current_user.cookbooks
    end

  end

  def new
    @cookbook= Cookbook.new
  end

  def create
    @cookbook= Cookbook.new params[:cookbook]
    @cookbook.user = @current_user
    @cookbook.save
    redirect_to user_path(@current_user)
  end

  def show
    @cookbook = Cookbook.find params[:id]
    if @cookbook.user == @current_user || @current_user.is_admin?
      @recipes = @cookbook.recipes
    else
      redirect_to root_path
    end
  end

  def template
    @cookbook = Cookbook.find params[:id]
    if @cookbook.user == @current_user || @current_user.is_admin?
      @recipes = @cookbook.recipes
    else
      redirect_to root_path
    end
  end

  def edit
    @cookbook = Cookbook.find params[:id]
    render :new
  end

  def update
    @cookbook = Cookbook.find params[:id]
    if @cookbook.update_attributes params[:cookbook]
      redirect_to cookbooks_path
    else
      render :new
    end
  end

  def destroy
    cookbook = Cookbook.find params[:id]
    cookbook.destroy
    redirect_to cookbooks_path
  end

end
