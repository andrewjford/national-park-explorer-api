class CreateRating < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :value
      t.integer :park_id
      t.integer :user_id
    end
  end
end
