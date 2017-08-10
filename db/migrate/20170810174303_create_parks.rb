class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :states
      t.string :lat_long
      t.string :description
      t.string :designation
      t.string :park_code
      t.string :park_id
      t.string :directions_url
      t.string :full_name
      t.string :url
      t.string :weather_info
      t.string :name
    end
  end
end
