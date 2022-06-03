class TabsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    @tabs = Tab.all
  end

  def show
    @tab = Tab.find(params[:id])
  end
end
