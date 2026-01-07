require_relative '../../interfaces/discount_interface'

class SeasonalDiscountService < DiscountInterface
  def apply_discount(order)
    order.total -= 20
  end
end
