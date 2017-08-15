class CreateVisitorcenters < ActiveRecord::Migration[5.1]
  def change
    create_table :visitorcenters do |t|
      t.string :name
      t.string :description
      t.string :latLong
      t.string :parkCode
      t.integer :park_id
    end
  end
end
