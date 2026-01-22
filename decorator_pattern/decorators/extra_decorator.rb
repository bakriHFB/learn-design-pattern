require_relative '../interfaces/calculator_interface'

class ExtraDecorator < CalculatorInterface
  def initialize(order_service)
    @order_service = order_service
  end

  def total
    @order_service.total
  end
end
