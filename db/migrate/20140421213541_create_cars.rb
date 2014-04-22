class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :manufacturer, limit: 100, null: false
      t.string :model, limit: 100, null: false 
      t.float :price, null: false
      t.string :plate, limit: 10, null: false
      t.string :owner_name, limit: 100, null: false
      t.string :owner_email, limit: 100, null: false

      t.timestamps
    end
    add_index :cars, :plate, unique: true
  end
end
