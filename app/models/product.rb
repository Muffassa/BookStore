class Product < ActiveRecord::Base
  belongs_to :category
  has_one :discount_item
  has_many :line_items
  validates :title, :description, :price, :img_url, :category_id,   presence:true
end
