class Category < ActiveRecord::Base
  has_many :items

  def available_items
    Item.where("inventory > 0 AND category_id = ?", self.id)
  end
end
