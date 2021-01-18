class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.text :description
      t.text :content
      t.string :status
      t.string :image
      t.references :province, null: false, foreign_key: true

      t.timestamps
    end
  end
end
