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

      total = @tab.total_cents
      dish = Dish.find(tab_dish_params[:dish_id])
      total += dish.price_cents

      @tab.update(total_cents: total)
    else
      render '/tabs/:tab_id/dishes', notice: 'Sorry, homie'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @tab = Tab.find(9)

    total = @tab.total_cents
    dish = TabDish.find(params[:tab_dish_id]).dish
    total -= dish.price_cents

    @tab.update(total_cents: total)

    TabDish.destroy(params[:tab_dish_id])
  end

  private

  def tab_dish_params
    params.require(:tab).permit(:dish_id)
  end
end
