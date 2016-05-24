class StoreController < ApplicationController

  def index
    @categories = Category.all
    @items = Item.avaliable_items
  end

end
