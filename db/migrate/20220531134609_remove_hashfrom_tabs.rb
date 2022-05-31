class RemoveHashfromTabs < ActiveRecord::Migration[6.1]
  def change
    remove_column :tabs, :hash
  end
end
