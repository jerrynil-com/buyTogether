class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_purchase, except: [:history]

  def create
    @order = @purchase.orders.build order_params
    @order.user = current_user
      if @order.save
        redirect_to purchase_path(@purchase)
      else
        render 'purchase/show'
      end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to purchase_path(@purchase)
    else
      render 'purchase/show'
    end
  end

  def history
    @orders = current_user.orders.includes( purchase: :store, ordered_item: :item )
  end

  private

  def order_params
    params.require(:order).permit(ordered_items_attributes: [:id, :item_id, :quantity, :_destroy])
  end

  def set_purchase
    @purchase = Purchase.find(params[:purchase_id])
  end

end
