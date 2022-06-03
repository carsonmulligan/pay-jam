class CreateJoinTableBillsTabDishes < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bills, :tab_dishes do |t|
      t.index [:bill_id, :tab_dish_id]
      t.index [:tab_dish_id, :bill_id]
    end
  end
end
