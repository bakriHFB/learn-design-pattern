class NotifyInterface
  def send_notification(order)
    raise NotImplementedError, 'You must implement the send_notification method'
  end
end
