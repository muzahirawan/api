class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :home_location
      t.string :work_location

      t.timestamps
    end
  end
end
