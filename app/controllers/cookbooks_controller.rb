class CookbooksController < ApplicationController
  def new
    @cookbook= Cookbook.new
  end

  def create
    @cookbook= Cookbook.new params[:cookbook]

  if @user.save
      session[:user_id] = @user.id
      cookbook = Cookbook.create :title => 'All of my receipes', :owner_id => @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  # def edit
  #   @cookbook= @auth
  #   render :new
  # end

  # def update
  #   @cookbook= @auth
  #   if @user.update_attributes params[:user]
  #     redirect_to root_path(@auth)
  #   else
  #     render :new
  #   end
  # end

  def show
    @cookbook= Cookbook.find params[:id]
  end
end
