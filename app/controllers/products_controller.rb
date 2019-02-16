class ProductsController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @products = Product.order("created_at DESC")
    @product = Product.find(5)
  end
  
  def show
    user = Product.find(params[:id]).user
    @products = user.products.order("created_at DESC").limit(10)
    @product = Product.find(params[:id])
  end
  
  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
