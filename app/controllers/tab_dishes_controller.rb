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
    @tab_dish = TabDish.new(tab_dish_params)
    @tab = Tab.find(params[:tab_id])
    @tab_dish.tab = @tab
    if @tab_dish.save
      redirect_to tab_path(@tab)
    else
      render '/tabs/:tab_id/dishes', notice: 'Sorry, homie'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def tab_dish_params
    params.require(:tab).permit(:dish_id)
  end
end
