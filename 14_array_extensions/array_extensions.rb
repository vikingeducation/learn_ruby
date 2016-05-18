
class Array

  def sum
    if self.empty?
      return 0
    else
    return self.reduce(:+)
    end
  end

  def square
    if self.empty?
      return []
    else
      return self.map { |number| number**2 }
    end
  end

  def square!
    self.map! { |number| number**2 }
  end

end
