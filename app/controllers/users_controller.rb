class UsersController < ApplicationController
  def show
    products = Product.order("created_at DESC")
    user = User.find(params[:id])
    @user = User.find(params[:id])
    @products = user.products
  end
end
