class LineItemsController < ApplicationController
	def create
		@line_item = current_cart.line_items.new line_item_params
		if @line_item.save
			redirect_to cart_path, notice: 'update!'
		else
			@product = @line_item.product
			render 'products/show'
		end
	end
	private
	def line_item_params
		params.require(:line_item).permit(:quantity, :product_id)
	end
end

