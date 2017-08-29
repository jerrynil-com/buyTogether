class PurchasesController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_purchase, only: [:show]

  def index
    @purchases = Purchase.all
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = current_user.purchases.build purchase_params
    if @purchase.save
      redirect_to purchase_path(@purchase)
    else
      render 'new'
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  private
  def purchase_params
    params.require(:purchase).permit(:store_id, :end_time, :time_period)
  end
end
