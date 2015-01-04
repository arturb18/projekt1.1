class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.text :description
      t.text :offer
      t.string :email
      t.string :address
      t.integer :phone

      t.timestamps null: false
    end
  end
end
