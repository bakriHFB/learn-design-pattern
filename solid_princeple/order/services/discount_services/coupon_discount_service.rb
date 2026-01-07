require_relative '../../interfaces/discount_interface'
class CouponDiscountService < DiscountInterface
  def apply_discount(order)
    order.total *= 0.8
  end
end
