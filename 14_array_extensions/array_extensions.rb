class Array

  def sum
    self.reduce(0, :+)
  end

  def square
    self.collect { |num| num ** 2 }
  end

  def square!
    self.collect! { |num| num ** 2 }
  end

end