class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :states
      t.string :latLong
      t.string :description
      t.string :designation
      t.string :parkCode
      t.string :parkId
      t.string :directionsUrl
      t.string :fullName
      t.string :url
      t.string :weatherInfo
      t.string :name
      t.float :rating
    end
  end
end
