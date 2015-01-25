class CreateFarmProducts < ActiveRecord::Migration
  def change
    create_table :farm_products do |t|
      t.references :farm, index: true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :farm_products, :farms
    add_foreign_key :farm_products, :products
  end
end
