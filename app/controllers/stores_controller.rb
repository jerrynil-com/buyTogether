class StoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def edit

  end

  def update
    if @store.update store_params
      redirect_to stores_path
    else
      render 'edit'
    end
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @store.destroy

    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:name, :description, :address, :phone, :logo, :image)
  end

  def set_store
    @store = Store.find params[:id]
  end
end
