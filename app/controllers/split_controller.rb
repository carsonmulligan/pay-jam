class SplitController < ApplicationController
  def show
    @tab = Tab.find(params[:id])
    @dish = Dish.find(params[:id])
  end
end
