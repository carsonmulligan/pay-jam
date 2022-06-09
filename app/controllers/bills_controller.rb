class BillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :create, :create_split]

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
    compute_stripe_session(@bill, @tab.total_cents)


    redirect_to new_bill_payment_path(@bill)
  end

  def create_split
    @tab = Tab.find(params[:tab_id])
    total = (params[:amount].to_i / params[:number].to_f).round
    @bill = Bill.create(tab: @tab, amount: total.to_i, status: 0)
    compute_stripe_session(@bill, total)

    redirect_to new_bill_payment_path(@bill)
  end

  def new
    # @bill = Bill.new()
  end

  private

  def compute_stripe_session(bill, amount)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @tab.table_number,
        amount: amount,
        currency: 'eur',
        quantity: 1
      }],
      success_url: bill_url(bill),
      cancel_url: bill_url(bill)
    )
    @bill.update(checkout_session_id: session.id)
    return session
  end

end
