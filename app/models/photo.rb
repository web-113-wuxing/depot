class Photo < ActiveRecord::Base
   class << self
     def selectphoto
      titlea = Photo.find_by_sql("select * FROM photos order by id desc limit 5") 
         return titlea  
           
     end
  end
end
