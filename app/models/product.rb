class Product < ActiveRecord::Base
  belongs_to :category
  validates :title, :description, :price, :img_url, :category_id,   presence:true
end
