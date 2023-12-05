class Ecom::HomeController < ApplicationController
  def index
    @products = Product.all
  end
end
