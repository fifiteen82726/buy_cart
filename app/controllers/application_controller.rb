class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def  current_cart
  	@current_cart ||= Cart.find_or_create_by(id: seesion[:cart_id])
  	session[:cart_id] = @current_cart.id
 	@current_cart
  end

  private 
  	def set_current_cart
  		session[:cart_id] = 1
  	end
end
