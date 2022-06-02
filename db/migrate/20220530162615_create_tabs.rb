class CreateTabs < ActiveRecord::Migration[6.1]
  def change
    create_table :tabs do |t|
      t.string :hash
      t.monetize :total, currency: { present: false}
      t.integer :status
      t.integer :table_number
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
