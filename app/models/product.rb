class Product < ActiveRecord::Base
  validates :title, :description, :image_url,:mark, :presence => true 
  has_many :comments
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01} 
  validates :mark, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to=>100}
  validates :title, :uniqueness => true
  validates :image_url, :format => { 

  :with        => %r{\.(gif|jpg|png)$}i, 

  :message => 'must be a URL for GIF, JPG or PNG image.' 

} 

default_scope :order => 'title'
has_many :line_items
has_many :orders, :through => :line_items
before_destroy :ensure_not_referenced_by_any_line_item
 def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
 class << self
     def selectitem(title)
      titlea = Product.find_by_sql("SELECT * FROM products WHERE title LIKE '%"+title+"%'") 
         return titlea  
           
     end
  end
end 

