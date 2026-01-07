class DiscountInterface
  def apply_discount(order)
    raise NotImplementedError, 'You must implement the apply_discount method'
  end
end
