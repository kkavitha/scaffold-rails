class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(allowed_params)
    redirect_to products_url if @product.save
  end

  def edit
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end

  private
  def allowed_params
    params.require(:product).permit(:label, :details, :installation_priority)
  end
end
