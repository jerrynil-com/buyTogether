class ItemsController < ApplicationController
  before_action :set_store

  def create
    if @store.items.create item_params
      redirect_to store_path(@store)
    else
      render 'stores/show'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :image)
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

end
