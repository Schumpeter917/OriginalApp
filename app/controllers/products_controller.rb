class ProductsController < ApplicationController
  
  before_action :move_to_index, except: :index
  
  def index
    @products = Product.order("created_at DESC")
    @product = Product.find(5)
  end
  
  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
