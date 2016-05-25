class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :carts
  has_many :orders
  belongs_to :current_cart, :class_name => 'Cart'

  def create_current_cart
    self.current_cart = self.carts.create
    self.save
  end

end
