require_relative '../../interfaces/discount_interface'

class VipDiscountService < DiscountInterface
  def apply_discount(order)
    order.total *= 0.9
  end
end
