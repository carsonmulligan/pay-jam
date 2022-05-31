class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :tab_dishes
end
