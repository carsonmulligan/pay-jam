class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.decimal :total
      t.integer :status, default: 0
      t.references :tab, null: false, foreign_key: true

      t.timestamps
    end
  end
end
