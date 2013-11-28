class CreateItemLocations < ActiveRecord::Migration
  def change
    create_table :item_locations do |t|
      t.integer :item_id
      t.integer :location_id

      t.timestamps
    end
  end
end
