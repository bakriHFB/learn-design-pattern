class NotifyInterface

  REGISTRY = {}
  
  def self.register(notify_type, notify_service)
    REGISTRY[notify_type] = notify_service
  end

  def send_notification(order)
    raise NotImplementedError, 'You must implement the send_notification method'
  end
end
