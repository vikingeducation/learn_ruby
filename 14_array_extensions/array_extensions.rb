class Array

  def sum
    self.reduce(0, :+)
  end

  def square
    self.map { |e| e * e }
  end
  def square!
    self.map! { |e| e * e }
  end
end