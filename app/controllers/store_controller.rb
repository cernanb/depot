class StoreController < ApplicationController
  def index
    @products = Product.order(:title)

    if session[:counter].nil?
      @counter = session[:counter] = 1
    else
      @counter = session[:counter] += 1 
    end
  end
end
