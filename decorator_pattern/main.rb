require_relative './services/order_price_calculator_service'
require_relative './decorators/order_decorator/gift_wrap_decorator'
require_relative './decorators/order_decorator/insurance_decorator'
require_relative './decorators/order_decorator/express_shipping_decorator'

def main
  order_service = OrderPriceCalculatorService.new(100)
  order_service = GiftWrapDecorator.new(order_service)
  order_service = InsuranceDecorator.new(order_service)
  order_service = ExpressShippingDecorator.new(order_service)

  display_total(order_service)
end

def display_total(order_service)
  puts "Total Order Price: #{order_service.total}"
end

main
