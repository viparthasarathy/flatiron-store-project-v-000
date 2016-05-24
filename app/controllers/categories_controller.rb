class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @items = @category.avaliable_items
  end

end
