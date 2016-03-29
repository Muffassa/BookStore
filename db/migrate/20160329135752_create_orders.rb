class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.date :delivery_date
      t.string :track_number
      t.string :status

      t.timestamps null: false
    end
  end
end
