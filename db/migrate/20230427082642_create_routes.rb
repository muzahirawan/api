class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :origin
      t.string :destination
      t.string :route_name
      t.string :total_travel_time
      t.string :travel_mode
      t.string :distance

      t.timestamps
    end
  end
end
