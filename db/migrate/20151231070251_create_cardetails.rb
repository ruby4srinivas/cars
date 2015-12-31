class CreateCardetails < ActiveRecord::Migration
  def change
    create_table :cardetails do |t|
      t.string :image
      t.integer :make_year, limit: 4
      t.string :make_car
      t.string :model
      t.float8 :price
      t.float2 :price

      t.timestamps null: false
    end
  end
end
