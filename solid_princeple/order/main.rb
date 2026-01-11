require 'ostruct'
require_relative 'services/order_service'
require_relative 'services/discount_services/coupon_discount_service'
require_relative 'services/notify_services/sms_notify_service'
require_relative 'services/discount_services/vip_discount_service'
require_relative 'services/discount_services/seasonal_discount_service'
require_relative 'services/notify_services/email_notify_service'
require_relative 'interfaces/discount_interface'
require_relative 'interfaces/notify_interface'

def main
  order_service = build_services('Seasonal', 'SMS')
  order = OpenStruct.new(id: 1, items: [OpenStruct.new(price: 100, quantity: 2)], total: 0)
  order_service.checkout(order)
end

def build_services(discount_type, notify_type)
  discount_service = DiscountInterface::REGISTRY[discount_type] || CouponDiscountService
  notify_service = NotifyInterface::REGISTRY[notify_type] || EmailNotifyService
  OrderService.new(discount_service.new, notify_service.new)
end

main
