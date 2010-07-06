class Order
  attr_reader :name, :email, :address, :comment
  def initialize(attr)
    @name = attr[:name]
    @email = attr[:email]
    @address = attr[:address]
    @comment = attr[:comment]
    @items = []
  end
  def assign_cart(cart)
    @items = cart.items
  end
end