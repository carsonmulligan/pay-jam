class DropCategoryDishesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :categories_dishes
  end
end
