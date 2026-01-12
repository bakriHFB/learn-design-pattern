
require_relative '../../interfaces/notify/notify_interface'

class EmailNotifyService < NotifyInterface
  def notify(order)
    puts "Sending Email notification for order status '#{order.status}' to email: #{order.user_email}"
  end
end
