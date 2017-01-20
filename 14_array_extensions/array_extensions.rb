class Array
  def sum
    self.reduce(0, :+)
  end

  def square
    self.map do |i|
      i * i
    end
  end

  def square!
    self.map! do |i|
      i * i
    end
  end
end