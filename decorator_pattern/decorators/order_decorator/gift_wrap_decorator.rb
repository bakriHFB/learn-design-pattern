require_relative '../extra_decorator'

class GiftWrapDecorator < ExtraDecorator
  def initialize(order_service)
    super(order_service)
  end

  def total
    @order_service.total + 5
  end
end
