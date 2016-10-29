class Array
  def sum
    self.reduce(0) { |a, b| a + b }
  end
  def square
    self.map { |item| item * item }
  end
  def square!
    self.map! { |item| item * item }
  end
end
