require_relative '../../interfaces/discount_interface'

class SeasonalDiscountService < DiscountInterface
  
  DiscountInterface.register('Seasonal', self)

  def apply_discount(order)
    order.total -= 20
  end
end
