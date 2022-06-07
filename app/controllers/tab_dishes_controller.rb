class TabDishesController < ApplicationController
  def index
    @tab = Tab.find(params[:id])
    @dish = Dish.find(params[:id])
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query or category ILIKE :query"
      @tab_dishes = TabDish.where(sql_query, query: "%#{params[:query]}%")
    else
      @tab_dishes = TabDish.all
    end
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

      update_tab_total(@tab_dish)
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

  def add_unit
    @tab = Tab.find(params[:tab_id])
    @tab_dish = TabDish.where(tab_id: params[:tab_id], dish_id: params[:dish_id]).first
    action = params[:dish_action]

    add_or_remove = action == "add" ? 1 : -1

    if @tab_dish.update(quantity: @tab_dish.quantity + add_or_remove)
      update_tab_total(@tab_dish, action)

      redirect_to @tab
    else
      redirect_to @tab, alert: 'unable to add unit'
    end
  end

  private

  def tab_dish_params
    params.require(:tab).permit(:dish_id)
  end

  def update_tab_total(tab_dish, action = "add")
    tab = tab_dish.tab
    total = tab.total_cents
    dish = Dish.find(tab_dish.dish_id)

    action == "add" ? total += dish.price_cents : total -= dish.price_cents

    tab.update(total_cents: total)
  end
end
