class Array

  def commutative &operator
    if self.length < 1 then 0
    elsif self.length < 2 then self[0]
    else
      self.reduce &operator
    end
  end

  def square
    self.map {|num| num**2 }
  end

  def square!
    self.map! {|num| num**2 }
  end

  def sum
    commutative &:+
  end
  
end