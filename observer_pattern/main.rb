require_relative 'order'
require_relative 'observers/order_observer'

def main
  order = Order.new("bakri@example.com", "734567890")
  observer = OrderObserver.new
  order.add_observer(observer)
  order.confirm!
  order.notify_observers
end

main
