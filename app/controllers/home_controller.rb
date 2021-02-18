class HomeController < ApplicationController

  def index
    @products = Product.all
  end

  def name
    
  end
end
