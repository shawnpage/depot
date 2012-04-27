class StoreController < ApplicationController
  def index
    @access_count = increment_access_count
    @products = Product.order(:title)
  end
end


def increment_access_count
  # Keep a count of how mant times the index action is accessed.
  if session[:counter].nil?
    session[:counter] = 1
  else
    session[:counter] += 1
  end
end
