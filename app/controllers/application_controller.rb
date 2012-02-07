class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def admin?
    if session[:admin].nil?
    redirect_to adminlogin_path
    else
    @admin = Admin.find_by_password(session[:admin][:password])
    redirect_to adminlogin_path if @admin.nil?
    end
  end
end