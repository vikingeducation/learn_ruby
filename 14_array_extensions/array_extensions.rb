class Array
  def sum
    tally = 0
    if self.length == 0
      return self.length
    else
      self.each do |value|
        tally += value
      end
    end
    tally
  end

  def square
    squared_numbers = []
    if self.length == 0
      return self
    else
      self.each_with_index do |value, index|
        squared_numbers[index] = value * value
      end
    end
    squared_numbers
  end
  def square!
    self.each_with_index do |value, index|
        self[index] = value * value
    end
    self
  end
end