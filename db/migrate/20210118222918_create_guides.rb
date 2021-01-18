class CreateGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :age
      t.boolean :spanish
      t.boolean :english
      t.string :email
      t.string :phone
      t.string :status
      t.string :date
      t.integer :seats
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
