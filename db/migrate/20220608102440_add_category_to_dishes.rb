class AddCategoryToDishes < ActiveRecord::Migration[6.1]
  def change
    remove_column :dishes, :category
    add_reference :dishes, :category, null: false
  end
end
