class Array
  def sum
    sum_result = 0
    self.each do |item|
      sum_result += item
    end
    return sum_result
  end

  def square
    if self.empty?
      return self
    else
      squared_array = []
      self.each do |item|
        squared_array << item ** 2
      end
      return squared_array
    end
  end

  def square!
    if self.empty?
      return self
    else
      squared_array = []
      self.each_index do |index|
        self[index] = self[index] ** 2
      end
      return self
    end
  end
end