class ObservableInterface
  def add_observer(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def remove_observer(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def notify_observers
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
