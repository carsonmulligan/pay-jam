class Tab < ApplicationRecord
  belongs_to :restaurant
  has_many :tab_dishes
  has_many :dishes, through: :tab_dishes

  enum status: [:open, :closed]
end
