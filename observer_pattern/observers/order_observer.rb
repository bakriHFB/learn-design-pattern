
require_relative '../interfaces/observer_interface'
require_relative '../services/notify/email_notify_service'
require_relative '../services/notify/sms_notify_service'
require_relative '../services/dashboard_service'

class OrderObserver < ObserverInterface
  def update(order)
   notify_services = [
      EmailNotifyService.new,
      SmsNotifyService.new,
    ]
    notify_services.each do |service|
      service.notify(order)
    end
    DashboardService.new.update_dashboard(order)
  end
end
