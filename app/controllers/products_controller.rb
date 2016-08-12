class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  def index
    products = Product.all
    render json: products
  end

  def show
    render json: @product
  end

  def create
    product = Product.create(product_params)
    if product.save
      render json: {message: "Product was created"}
    else
      render json: {message: "Product did not get created!"}
    end
  end

  def update
    @product.update(product_params)
    if @product.save
      render json: {message: "Product was created"}
    else
      render json: {message: "Product did not get created!"}
    end
  end

  def destroy
    @product.destroy
    render json: {message: "Product was successfully deleted"}
  end

  private

    def set_product
      begin
        @product = Product.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: {message: "id is not correct"}
      end
    end

    def product_params
      params.require(:product).permit(:name, :description, :price)
    end

end
