
require_relative 'interfaces/observable_interface'

class Order < ObservableInterface
  attr_reader :status, :user_email, :user_phone, :observers

  def initialize(user_email, user_phone, observers = [])
    @user_email = user_email
    @user_phone = user_phone
    @status = "pending"
    @observers = observers
  end

  def confirm!
    @status = "confirmed"
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end
end
