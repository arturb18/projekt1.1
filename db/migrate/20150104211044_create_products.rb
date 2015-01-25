class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :quality
      t.string :available_time
      t.timestamps null: false
      t.references :user, index: true
    end
       add_foreign_key :products, :user
    end
end
