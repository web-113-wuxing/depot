class StoreController < ApplicationController
  def index
    @products = Product.all
<<<<<<< HEAD
    @cart = current_cart
=======
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  end

end
