require_relative '../../interfaces/shipping_strategy_interface'

class FedexShippingStrategy < ShippingStrategyInterface

  ShippingStrategyInterface.register('Fedex', self)

  def calculate_shipping(order)
    order.weight * 10 + 15
  end
end
