class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @items = @category.available_items
  end

end
