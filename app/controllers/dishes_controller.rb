class DishesController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = Dish.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = Dish.new(dish_params)
    @dish.restaurant = @restaurant
    if @dish.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query or category ILIKE :query"
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
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to restaurant_path(@dish.restaurant)
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :description, :category)
  end
end
