class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.references :spot, null: false, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
