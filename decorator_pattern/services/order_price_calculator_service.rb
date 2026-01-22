require_relative '../interfaces/calculator_interface'

class OrderPriceCalculatorService < CalculatorInterface
  def initialize(base_price)
    @base_price = base_price
  end

  def total
    @base_price
  end
end
