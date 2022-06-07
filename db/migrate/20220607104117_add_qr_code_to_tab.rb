class AddQrCodeToTab < ActiveRecord::Migration[6.1]
  def change
    add_column :tabs, :qr_code, :string
  end
end
