class OrderService
  def initialize(discount_service, notify_service)
    @discount_service = discount_service
    @notify_service = notify_service
  end

  def checkout(order)
    calculate_total(order)
    discount(order)
    notify(order)
    display_order(order)
  end

  private

  def calculate_total(order)
    order.items.each do |item|
      order.total += item.price * item.quantity
    end
  end
  
  def discount(order)
    @discount_service.apply_discount(order)
  end

  def notify(order)
    @notify_service.send_notification(order)
  end

  def display_order(order)
    puts "Order ##{order.id} - Total: $#{order.total}"
  end
end
