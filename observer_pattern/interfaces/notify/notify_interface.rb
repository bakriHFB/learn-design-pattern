class NotifyInterface
  def notify(order)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
