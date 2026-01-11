class ShippingService
  def initialize(strategy)
    @strategy = strategy
  end

  def calculate_shipping(order)
    cost = calculate_cost(order)
    display_shipping_weight(order, cost)
  end

  private

  def calculate_cost(order)
    @strategy.calculate_shipping(order)
  end

  def display_shipping_weight(order, cost)
    puts "Shipping weight: #{order.weight}"
    puts "Shipping cost: #{cost}"
  end
end
