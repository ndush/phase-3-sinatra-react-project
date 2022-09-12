class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :unit_price
      t.string :description
     end
  end
end
