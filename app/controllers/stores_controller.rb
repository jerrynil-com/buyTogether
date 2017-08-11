class StoresController < ApplicationController

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.save
    redirect_to stores_path
  end

  def show
    @store = Store.find params[:id]
  end

  private
  def store_params
    params.require(:store).permit(:name, :description, :address, :phone)
  end
end
