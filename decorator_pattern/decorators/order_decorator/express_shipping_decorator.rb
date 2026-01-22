require_relative '../extra_decorator'

class ExpressShippingDecorator < ExtraDecorator
  def initialize(order_service)
    super(order_service)
  end

  def total
    @order_service.total + 15
  end
end
