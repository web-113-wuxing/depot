class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
<<<<<<< HEAD
  
  def add_product(product_id)
    current_item = line_items.where(:product_id => product_id).first
    if current_item
      current_item.quantity += 1
    else
      current_item = LineItem.new(:product_id=>product_id)
      line_items<<current_item
=======
  def add_product(product_id)
    current_item = line_items.where(:product_id => product_id).first
    if current_item
       current_item.quantity += 1
     else
       current_item = LineItem.new(:product_id=>product_id)
       line_items<< current_item
       
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    end
    current_item
  end
  
  def total_price
<<<<<<< HEAD
    line_items.to_a.sum {|item|item.total_price}
  end
  
   def total_items
     line_items.sum(:quantity)
   end
   
=======
    line_items.to_a.sum{|item| item.total_price}
  end
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
end
