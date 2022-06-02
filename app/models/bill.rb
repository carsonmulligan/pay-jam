class Bill < ApplicationRecord
  belongs_to :tab
  monetize :amount_cents
  enum status: [:pending, :paid, :canceled]
end
