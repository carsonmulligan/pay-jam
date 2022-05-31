class Tab < ApplicationRecord
  belongs_to :restaurant
  has_many :tab_dishes

  enum status: [:open, :closed]
end
