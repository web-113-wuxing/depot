class Comment < ActiveRecord::Base
  belongs_to :product
  validates :product_id, :content, :presence => true
end
