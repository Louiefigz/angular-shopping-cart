class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :update, :destroy]

  def index
    carts = Cart.all
    # render json: carts
  end

  def show
    render json: @cart
  end

  def create
    cart = Cart.create(cart_params)
    if cart.save
      render json: {message: "Cart was created"}
    else
      render json: {message: "Cart did not get created!"}
    end
  end

  def update
    @cart.update(cart_params)
    if @cart.save
      render json: {message: "Cart was created"}
    else
      render json: {message: "Cart did not get created!"}
    end
  end

  def destroy
    @cart.destroy
    render json: {message: "cart was successfully deleted"}
  end

  private

    def set_cart
      begin
        @cart = Cart.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: {message: "id is not correct"}
      end
    end

    def cart_params
      params.require(:cart).permit()
    end

end
