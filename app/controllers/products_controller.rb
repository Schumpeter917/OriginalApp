class ProductsController < ApplicationController
  def index
    @products = Product.order("created_at DESC")
    @product = Product.find(5)
  end
end
