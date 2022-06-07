class BillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show,:create]
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def create
    @tab = Tab.find(params[:tab_id])
    total = params[:amount].present? ? params[:amount] : @tab.total_cents

    @bill = Bill.create(tab: @tab, amount: total, status: 0)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @tab.table_number,
        amount: @tab.total_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: bill_url(@bill),
      cancel_url: bill_url(@bill)
    )
    @bill.update(checkout_session_id: session.id)
    redirect_to new_bill_payment_path(@bill)
  end

  def new
    # @bill = Bill.new()
  end

end
