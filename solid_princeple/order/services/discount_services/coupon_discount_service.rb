require_relative '../../interfaces/discount_interface'
class CouponDiscountService < DiscountInterface

  DiscountInterface.register('Coupon', self)
  
  def apply_discount(order)
    order.total *= 0.8
  end
end
