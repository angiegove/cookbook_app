class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]

  if @user.save
      session[:user_id] = @user.id
      cookbook = Cookbook.create :title => 'All of my receipes', :owner_id => @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = @auth
    render :new
  end

  def update
    @user = @auth
    if @user.update_attributes params[:user]
      redirect_to root_path(@auth)
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
  end

  def cookbooks
    @user = User.find params[:id]
    @cookbooks = @user.cookbooks
  end

end
