class Array

  def sum
    return 0 if self.empty?
    return self.reduce(:+)
  end

  def square
    return self if self.empty?
    return self.map { |e| e**2 }
  end

  def square!
    return self if self.empty?
    return self.map! { |e| e**2 }
  end

end