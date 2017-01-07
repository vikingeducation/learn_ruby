class Array
  def sum
    self.reduce(0, :+)
  end

  def square
    self.map { |elem| elem * elem }
  end

  def square!
    self.map! { |elem| elem * elem }
  end
end
