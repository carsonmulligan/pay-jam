class AddOrderToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :order, :integer
  end
end
