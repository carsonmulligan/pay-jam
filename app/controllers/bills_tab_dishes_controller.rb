class BillsTabDishesController < ApplicationController
  def index
    @bills_tab_dishes = BillTabDishes.all(bill_tab_dish_params)
  end

  private

  def bill_tab_dish_params
    params.require(:tab_dish).permit(:bill_id)
  end
end
