class LineItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :cart

  def subtotal
    item * quantity
  end

end
