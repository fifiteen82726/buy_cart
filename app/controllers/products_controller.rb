class ProductsController < ApplicationController
  def index
  end

 def show
 @product = Product.find params[:id]
 @line_item = current_cart.line_items.find_or_initialize_by(product: @product)
end
end
