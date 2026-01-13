
require_relative '../../interfaces/notify/notify_interface'

class SmsNotifyService < NotifyInterface
  def notify(order)
    puts "SMS sent to #{order.user_phone}"
  end
end
