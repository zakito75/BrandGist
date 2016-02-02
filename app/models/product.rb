class Product < ActiveRecord::Base
  belongs_to :category
  def intro
    self.description.truncate(20, separator: " ", omission: "...")  
  end
end
