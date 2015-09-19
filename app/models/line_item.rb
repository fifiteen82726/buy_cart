class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart
  belongs_to :product

  def check_stock
 errors.add(:quantity, 'out of stock') if quantity > product.stock
end
def set_unit_price
  self.unit_price = product.price
end
end
