class ProductsController < ApplicationController
before_filter :set_search
#pour eviter un conflit au show du product
  def index
    @products = @q.result.page(params[:page]).per(3)
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
