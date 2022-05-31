class DishesController < ApplicationController

  def new
  end

  def create
  end

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
