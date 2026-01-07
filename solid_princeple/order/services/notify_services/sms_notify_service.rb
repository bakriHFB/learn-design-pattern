require_relative '../../interfaces/notify_interface'

class SMSNotifyService < NotifyInterface
  def send_notification(order)
    # SMS notification logic here
    puts "Sending SMS notification for order ##{order.id}"
  end
end
