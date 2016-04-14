class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.belongs_to :user
      t.string :ability
      t.timestamps null: false
    end
  end
end
