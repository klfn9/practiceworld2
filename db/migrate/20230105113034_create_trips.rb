class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|

      t.timestamps
      t.string :title
      t.text :body
      t.integer :user_id
      t.string :country
      t.integer :price
    end
  end
end
