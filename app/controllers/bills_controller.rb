class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def create
    @tab = Tab.find(params[:tab_id])
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to
  end

  private

  def bill_params
    params.require(:bill).permit(:total, :status)
  end
end
