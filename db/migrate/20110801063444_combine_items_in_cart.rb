class CombineItemsInCart < ActiveRecord::Migration
  def self.up
    Cart.all.each do |cart|
       sums = cart.line_item.group(:product_id).sum(:quantity)
       sums.each do |product_id, quantity|
         if quantity > 1
           cart.line_item.where(:product_id=>product_id).delete_all
          cart.line_item.create(:product_id=>product_id, :quantity=>quantity)
    end
  end  
  end
  end

  def self.down
  LineItem.where("quantity>1").each do |line_items|
      # add individual items
      line_item.quantity.times do 
        LineItem.create :cart_id=>line_items.cart_id,
          :product_id=>line_item.product_id, :quantity=>1
      end

      # remove original item
      line_item.destroy
    end
  end
end