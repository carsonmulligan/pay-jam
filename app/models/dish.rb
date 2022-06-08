class Dish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :category

  has_many :tab_dishes, dependent: :destroy
  has_many :tabs, through: :tab_dishes
  has_one_attached :photo
end
