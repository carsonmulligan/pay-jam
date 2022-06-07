class TabsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    @tabs = Tab.all
  end

  def show
    @tab = Tab.find(params[:id])
    @qr_code = RQRCode::QRCode.new("https://www.payjam.co/tabs/#{@tab.id}")
    @svg = @qr_code.as_svg
    @bill = Bill.new
  end

  def destroy
    redirect_to tab_dishes_path
  end

  def new
    @qr_code = RQRCode::QRCode.new("https://www.payjam.co/tabs/3")
    @svg = @qr_code.as_svg
  end

private

  def tab_params
    params.require(:tab).permit(:qr_code)
  end
end
