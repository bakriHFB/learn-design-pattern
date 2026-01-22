require_relative '../extra_decorator'

class InsuranceDecorator < ExtraDecorator
  def initialize(order_service)
    super(order_service)
  end

  def total
    @order_service.total + 10
  end
end
