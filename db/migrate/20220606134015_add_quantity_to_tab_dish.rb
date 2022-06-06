class AddQuantityToTabDish < ActiveRecord::Migration[6.1]
  def change
    add_column :tab_dishes, :quantity, :integer, :default => 1
  end
end
