class DishesController < ApplicationController

  def new
  end

  def create
  end

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @dishes = Dish.where(sql_query, query: "%#{params[:query]}%")
    else
    @dishes = Dish.all
    end
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
