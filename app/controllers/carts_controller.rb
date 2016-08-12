class CartsController < ApplicationController

  def index
    @carts = Cart.all
    render json: @carts, include: 'products'
  end

  def show
    cart = Cart.find(params[:id])
  end
end
