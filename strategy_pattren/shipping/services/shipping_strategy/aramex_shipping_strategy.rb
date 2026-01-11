require_relative '../../interfaces/shipping_strategy_interface'

class AramexShippingStrategy < ShippingStrategyInterface

  ShippingStrategyInterface.register('Aramex', self)
  
  def calculate_shipping(order)
    order.weight * 8 + 10
  end
end
