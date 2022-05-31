class Tab < ApplicationRecord
  enum status: { unpaid: 0, paid:1}
  belongs_to :restaurant
  has_many :tab_dishes

end
