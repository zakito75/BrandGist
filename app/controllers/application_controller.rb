class ApplicationController < ActionController::Base
  def set_search
    @q = Product.search(params[:q])
  end
  protect_from_forgery with: :exception
end
