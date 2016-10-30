class Array

  def sum
    result = 0
    self.each do |i|
      result += i
    end
    result
  end

  def square
    result = []
    self.map do |i|
      result << i * i
    end
    result
  end

  def square!
    self.map! do |i|
      i * i
    end
  end
end