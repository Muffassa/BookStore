class CreateDiscountItems < ActiveRecord::Migration
  def change
    create_table :discount_items do |t|
      t.belongs_to :product
      t.integer :discount
      t.timestamps null: false
    end
  end
end
