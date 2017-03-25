class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :unit_of_measure
      t.float :stock_min
      t.float :stock_max
      t.integer :shelf_life
      t.decimal :cost
      t.decimal :selling_price
      t.string :country_of_origin_code

      t.timestamps
    end
  end
end
