class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
  
  private
  
    def current_cart
      Cart.find(session[:cart_id])
=======
  private
    def current_cart
        Cart.find(session[:cart_id])
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
<<<<<<< HEAD
    end
=======
    end 
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
end
