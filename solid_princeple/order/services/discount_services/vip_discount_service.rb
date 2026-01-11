require_relative '../../interfaces/discount_interface'

class VipDiscountService < DiscountInterface

  DiscountInterface.register('VIP', self)
  
  def apply_discount(order)
    order.total *= 0.9
  end
end
