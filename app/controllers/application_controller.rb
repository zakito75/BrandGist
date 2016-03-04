class ApplicationController < ActionController::Base
  def set_search
    @q = Celebrity.search(params[:q])
  end
  protect_from_forgery with: :exception
end
