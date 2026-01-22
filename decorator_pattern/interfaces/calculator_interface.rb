class CalculatorInterface
  def total
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
