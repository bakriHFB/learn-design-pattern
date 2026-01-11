class ShippingStrategyInterface

  REGISTRY = {}

  def self.register(shipping_method, shipping_service)
    REGISTRY[shipping_method] = shipping_service
  end

  def calculate_shipping(order)
    raise NotImplementedError, 'You must implement the calculate_shipping method'
  end
end
