class Question < ActiveRecord::Base
  validates :title, :content, :presence => true
end
