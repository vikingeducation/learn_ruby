class Array
  def sum
    return 0 if self.size == 0

    total = 0
    self.each { |element| total += element }

    total
  end

  def square
    return self if self.size == 0

    squares = []
    self.each { |element| squares.push(element ** 2) }

    squares
  end

  def square!
    self.map! { |element| element ** 2} 
  end
end