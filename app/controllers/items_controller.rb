class ItemsController < ApplicationController
  before_action :set_store
  before_action :set_item, only:[:edit, :update, :destroy]


  def create
    if @store.items.create item_params
      redirect_to store_path(@store)
    else
      render 'stores/show'
    end
  end

  def edit
  end

  def update
    if @item.update item_params
      redirect_to store_path(@store)
    else
      render 'edit'
    end
  end

  def destroy
    if @item.destroy
      redirect_to store_path(@store)
    else
      remder 'edit'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :image)
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
