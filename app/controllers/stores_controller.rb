class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    store = Store.new

    store.name = params[:name]
    store.description = params[:description]
    store.phone = params[:phone]
    store.address = params[:address]

    store.save
    redirect_to '/stores'
  end
end
