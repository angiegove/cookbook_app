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
    redirect_to root_path
  end

  def show
    @cookbook = Cookbook.find params[:id]
    if @cookbook.user == @current_user || @current_user.is_admin?
      @recipes = @cookbook.recipes
    else
      redirect_to root_path
    end
  end

  def cookbook_template
    @cookbook = Cookbook.find params[:id]
    @theme = params[:theme]
    session[:theme] = @theme
    # if @cookbook.user == @current_user || @current_user.is_admin?
    @recipes = @cookbook.recipes
    respond_to do |format|
      format.html
      format.pdf do
        cookbook = render_to_string(:action => "cookbook_template.html.erb", :layout => false, :formats => [:html], :handler => [:erb])
        cookbook = PDFKit.new(cookbook)
        cookbook = cookbook.to_pdf
        send_data cookbook, :filename => "cookbook.pdf", :type => 'application/pdf'
        return
      end
    end


    # else
    #   redirect_to root_path
    # end
  end

  def email
    @cookbook= Cookbook.find params[:id]
    CookbookMailer.cookbook_email(@cookbook, session[:theme]).deliver
    redirect_to cookbooks_path
  end

  def edit
    @cookbook = Cookbook.find params[:id]
    render :new
  end

  def update
    @cookbook = Cookbook.find params[:id]
    if @cookbook.update_attributes params[:cookbook]
      redirect_to cookbook_path(@cookbook.id)
    else
      render :new
    end
  end

  def destroy
    cookbook = Cookbook.find params[:id]
    cookbook.destroy
    redirect_to root_path
  end

end
