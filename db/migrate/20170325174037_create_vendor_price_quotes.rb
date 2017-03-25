class CreateVendorPriceQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :vendor_price_quotes do |t|
      t.references :product, foreign_key: true
      t.references :vendor, foreign_key: true
      t.string :unit_of_measure
      t.string :stock_unit_of_measure
      t.decimal :price
      t.string :country_of_origin_code
      t.datetime :valid_from

      t.timestamps
    end
  end
end
