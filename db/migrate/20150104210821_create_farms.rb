class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.text :description
      t.text :offer
      t.string :email
      t.string :address
      t.integer :phone
      t.references :user, index: true
      t.timestamps null: false
    end
    add_foreign_key :farms, :users
  end
end
