class Array

  def sum
    total = 0
    if self.empty?
      total
    else
      self.each do |number|
        total += number
      end
    end
    total
  end

  def square
    if self.empty?
      []
    else
      squared = self.map do |number|
        number ** 2
      end
      squared
    end
  end

  def square!
    self.map! do |number|
      number ** 2
    end
    
  end

end
