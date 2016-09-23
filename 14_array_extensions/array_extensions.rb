class Array
  def sum
    sum = 0
    if self.any? == false
      return 0
    else 
      self.each do |number|
        sum += number
      end
      return sum
    end
  end

  def square
    square = []
    if self.any? == false
      return square
    else
      self.each do |number|
        number = number**2
        square.push(number)
      end
    return square
    end
  end

  def square!
    square = []
    if self.any? == false
      return square
    else
      self.each do |number|
        number = number**2
        square.push(number)
      end
      square.each do |number|
        self.pop
      end 
      square.each do |number|
        self.push(number)
      end
    return self
    end
  end

end