class ItemsController < ApplicationController


  def show
    @item = item.find(params[:id])
  end



end
