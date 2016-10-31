class Array
  def sum
    self.reduce(0) { |running_total, item| running_total + item }
  end
  def square
    self.map { |item| item ** 2 }
  end
  def square!
    self.map! { |item| item ** 2 }
  end
end