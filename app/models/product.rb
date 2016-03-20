class Product < ActiveRecord::Base
  validates :title, :description, :price, :img_url,   presence:true
end
