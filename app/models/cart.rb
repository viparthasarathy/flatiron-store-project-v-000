class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, :through => :line_items
  belongs_to :user

  def total
    self.line_items.reduce(0) {|sum, line_item| sum += line_item.subtotal }
  end

  def add_item(item_id)
    line_item = LineItem.find_by(item_id: item_id, cart_id: self.id)
    if line_item
      line_item.quantity += 1
    else
      line_item = LineItem.new(item_id: item_id, cart_id: self.id, quantity: 1)
    end
    line_item
  end

end
