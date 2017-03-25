class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zip
      t.string :province
      t.string :country

      t.timestamps
    end
  end
end
