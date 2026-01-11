require 'ostruct'
require_relative 'services/shipping_strategy/fedex_shipping_strategy'
require_relative 'services/shipping_strategy/dhl_shipping_strategy'
require_relative 'services/shipping_strategy/aramex_shipping_strategy'
require_relative 'services/shipping_service'

def main 
  order = OpenStruct.new(weight: 5)
  shipping_service = service_builder("Fedex")
  shipping_service.calculate_shipping(order)
end

def service_builder(shipping_method)
  shipping_method_service = ShippingStrategyInterface::REGISTRY[shipping_method] || DhlShippingStrategy
  ShippingService.new(shipping_method_service.new)
end

main
