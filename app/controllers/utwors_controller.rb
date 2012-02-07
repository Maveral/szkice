class UtworsController < ApplicationController
  uses_tiny_mce
  before_filter :admin?, :except => [:poems, :proses, :show, :index]
  
  def index
    @utwory = Utwor.all
  end
  
  def poems
    @utwory = Utwor.find_all_by_poem(0)
  end
  
  def proses
    @utwory = Utwor.find_all_by_poem(1)
  end
  
  def show
    @utwor = Utwor.find(params[:id])
  end
  
  def edit
    @utwor = Utwor.find(params[:id])
  end
  
  def update
    @utwor = Utwor.find(params[:id])
    @utwor.update_attributes(params[:utwor])
    redirect_to admin_index_path
  end
  
  def new
    @utwor = Utwor.new
  end
  
  def create
    @utwor = Utwor.new(params[:utwor])
    redirect_to admin_index_path if @utwor.save
  end
  
  def destroy
    @utwor = Utwor.find(params[:id])
    redirect_to admin_index_path if @utwor.destroy
  end
  
end