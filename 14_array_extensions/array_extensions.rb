class Array
  def sum
    return 0 if self.empty?
    self.inject(:+)
  end
  def square
    self.map { |e| e**2 }
  end
  def square!
    self.map! { |e| e**2 }
  end
end