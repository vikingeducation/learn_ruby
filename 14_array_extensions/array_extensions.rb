class Array
  def sum
    return 0 if self.empty?
    self.inject(:+)
  end

  def square
    return self if self.empty?
    self.map { |i| i ** 2 }
  end

  def square!
    return self if self.empty?
    self.map! { |i| i ** 2 }
  end
end
