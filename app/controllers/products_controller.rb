class ProductsController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @products = Product.order("created_at DESC")
  end
  
  def new
    @product = Product.new
  end
  
  def create
    Product.create(create_params)
  end

  def show
    user = Product.find(params[:id]).user
    @products = user.products.order("created_at DESC").limit(10)
    @product = Product.find(params[:id])
  end
  
  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(create_params) if product.user_id == current_user.id
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy if product.user_id == current_user.id
  end
  
  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
  def create_params
    params.require(:product).permit(:title, :image).merge(user_id: current_user.id)
  end
end
