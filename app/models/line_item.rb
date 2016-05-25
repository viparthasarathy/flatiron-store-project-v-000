class LineItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :cart


  def subtotal
    item.price * quantity
  end



end
