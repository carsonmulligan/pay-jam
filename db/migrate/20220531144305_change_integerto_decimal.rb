class ChangeIntegertoDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :dishes, :price, :decimal
    change_column :tabs, :total, :decimal
  end
end
