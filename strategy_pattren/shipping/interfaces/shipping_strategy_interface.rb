class ShippingStrategyInterface
  def calculate_shipping(order)
    raise NotImplementedError, 'You must implement the calculate_shipping method'
  end
end
