class Array

  def sum
    if self.empty?
      0
    else
      self.inject { |number, sum| sum + number }
    end
  end

  def square
    if self.empty?
      []
    else
      self.map { |number| number**2 }
    end
  end

  def square!
    if self.empty?
      []
    else
      self.map! { |number| number**2 }
    end
  end

end