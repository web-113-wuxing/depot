class Cart < ActiveRecord::Base
  has_many :line_item, :dependent => :destroy
  def add_product(product_id)
    current_item = line_item.where(:product_id => product_id).first
    if current_item
       current_item.quantity += 1
     else
       current_item = LineItem.new(:product_id=>product_id)
       line_item << current_item
       
    end
    current_item
  end
  
  def total_price
    line_item.to_a.sum{|item| item.total_price}
  end
end
