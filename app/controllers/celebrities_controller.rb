class CelebritiesController < ApplicationController
before_filter :set_search
#pour eviter un conflit au show du product
  def index
    @celebrities = @q.result.page(params[:page]).per(6)
    @categories = Category.all
  end

  def show
    @celebrity = Celebrity.find(params[:id])
  end

  def new 
    @celebrity = Celebrity.new
  end

  def create
    @celebrity = Celebrity.new celebrity_params
    @celebrity.save
    redirect_to '/'
  end


  private

  def celebrity_params
    params.require(:celebrity).permit(:name, :description, :source, :picture)
  end
end
