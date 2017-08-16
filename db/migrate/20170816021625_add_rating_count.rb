class AddRatingCount < ActiveRecord::Migration[5.1]
  def change
    add_column :parks, :rating_count, :integer
  end
end
