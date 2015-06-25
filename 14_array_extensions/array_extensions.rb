class Array

  def sum
    return_sum = 0
    self.each do |num|
      return_sum += num
    end
    return_sum
  end

  def square
    self.map do |num|
      num*num
    end
  end

  def square!
    self.length.times do
      square = self[0]*self[0]
      self.push(square)
      self.shift
    end
  end

end
