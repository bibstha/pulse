class CreatePriceRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :price_ranges do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :vendor, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
