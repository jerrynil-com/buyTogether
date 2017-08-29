class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = current_user.purchases.build purchase_params
    if @purchase.save
      redirect_to purchases_path
    else
      render 'new'
    end
  end

  private
  def purchase_params
    params.require(:purchase).permit(:store_id, :end_time, :time_period)
  end
end
