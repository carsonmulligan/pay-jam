class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new(restaurant_params)
    @user = User.find(params[:id])
    @restaurant.save!
  end
end

private

def restaurant_params
  @restaurant.params(:name, :address).permit(:name, :address)
end
