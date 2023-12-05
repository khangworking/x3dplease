class Ecom::ProductsController < ApplicationController
  def index
    @products = Product.all
  end
end
