class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end
  
  def create
    Ingredient.create(crate_params)
  end
  
  private
  def create_params
    params.require(:ingredients).permit(:id, :name, :quantity, :text, :_destroy).merge(product_id: current_user.product.last.id)
  end
end
