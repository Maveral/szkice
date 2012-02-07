class KsiegasController < ApplicationController
  uses_tiny_mce :options => { :theme => 'simple', :plugins => %w{ table fullscreen }}
  
  def new
    @wpisy = Ksiega.paginate(:page => params[:page], :per_page => 10).all(:order => "created_at DESC")
    @wpis = Ksiega.new
  end
  
  def create
    @wpis = Ksiega.new(params[:ksiega])
    redirect_to new_ksiega_path if @wpis.save
  end
  
end