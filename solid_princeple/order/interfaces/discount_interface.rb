class DiscountInterface

  REGISTRY = {}

  def self.register(discount_type, discount_service)
    REGISTRY[discount_type] = discount_service
  end

  def apply_discount(order)
    raise NotImplementedError, 'You must implement the apply_discount method'
  end
end
