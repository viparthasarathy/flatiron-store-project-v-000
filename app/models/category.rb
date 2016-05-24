class Category < ActiveRecord::Base
  has_many :items

  def avaliable_items
    Item.where("inventory > 0 AND category_id = ?", self.id)
  end
end
