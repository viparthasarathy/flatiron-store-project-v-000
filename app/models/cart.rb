class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, :through => :line_items
  belongs_to :user

  def total
    self.line_items.reduce(0) {|sum, line_item| sum += line_item.subtotal }
  end
end
