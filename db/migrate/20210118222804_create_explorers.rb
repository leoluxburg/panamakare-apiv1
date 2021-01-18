class CreateExplorers < ActiveRecord::Migration[6.0]
  def change
    create_table :explorers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :status
      t.string :date
      t.string :seats
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
