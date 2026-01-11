require_relative '../../interfaces/shipping_strategy_interface'

class DhlShippingStrategy < ShippingStrategyInterface

  ShippingStrategyInterface.register('Dhl', self)

  def calculate_shipping(order)
    order.weight * 12 + 20
  end
end
