class CreateAdvices < ActiveRecord::Migration[6.0]
  def change
    create_table :advices do |t|
      t.string :name
      t.text :description
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
