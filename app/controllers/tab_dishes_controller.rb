class TabDishesController < ApplicationController
  def index
  end

  def show
    @dish = Dish.find(params[:id])
    @tab = Tab.find(params[:id])
  end

  def new
    @dish = Dish.find(params[:tab_id])
    @tab = Tab.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
