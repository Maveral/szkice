class AdminController < ApplicationController
  before_filter :admin?, :except => [:login, :auth, :destroy]
  
  def index
    @utwory = Utwor.paginate(:page => params[:page], :per_page => 15).all(:order => "title")
  end
  
  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to admin_index_path
    else
      redirect_to edit_admin_path(@admin)
    end
    
  end
  
  def destroy
    session[:admin] = nil
    redirect_to adminlogin_path
  end
  
  def login

  end
  
  def auth
    @admin = Admin.find_by_password(params[:admin][:password])
    if @admin.nil?
      render 'login'
    else
      session[:admin] = @admin
      redirect_to admin_index_path
    end
  end
  
  def ksiegaindex
    @wpisy = Ksiega.paginate(:page => params[:page], :per_page => 10).all(:order => "created_at DESC")
  end
  
  def destroywpis
    @wpis = Ksiega.find(params[:wpis])
    redirect_to ksiega_path if @wpis.destroy
  end
  
end
