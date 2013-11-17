class CookbooksController < ApplicationController

  def index
    @cookbooks = Cookbook.all
  end

  def new
    @cookbook= Cookbook.new
  end

  def create
    @cookbook= Cookbook.new params[:cookbook]
    @cookbook.user = @user_auth
    @cookbook.save
    redirect_to user_path(@user_auth)
  end

  def show
    @cookbook = Cookbook.find params[:id]
    @recipes = @cookbook.recipes
  end

  def edit
    @cookbook= @auth
    render :new
  end

  def update
    @cookbook= @auth
    if @user.update_attributes params[:user]
      redirect_to root_path(@auth)
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
