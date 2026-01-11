require_relative '../../interfaces/notify_interface'

class EmailNotifyService < NotifyInterface

  NotifyInterface.register('Email', self)
  
  def send_notification(order)
    # Email notification logic here
    puts "Sending Email notification for order ##{order.id}"
  end
end
