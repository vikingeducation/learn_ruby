class Array
  def sum
    sum = 0
    self.each do |number|
      sum += number
    end
    sum
  end

  def square
    self.map do |number|
      number ** 2
    end
  end

  def square!
    self.map! do |number|
      number ** 2
    end
  end
end