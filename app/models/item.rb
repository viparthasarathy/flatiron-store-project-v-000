class Item < ActiveRecord::Base
  has_many :line_items
  belongs_to :category

end
