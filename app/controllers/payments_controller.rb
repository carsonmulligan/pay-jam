class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @bill = Bill.find(params[:bill_id])
  end
end
