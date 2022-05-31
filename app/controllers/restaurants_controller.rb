class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
    @user = User.find(params[:id])
    @restaurant.save!
  end
end
