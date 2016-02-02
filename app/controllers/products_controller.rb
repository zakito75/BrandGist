class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(3)
    @categories = Category.all
    @q = Product.search(params[:q])
    @search = @q.result
  end

  def show
    @product = Product.find(params[:id])
  end
end
