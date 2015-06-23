class Array

  def sum
    self.empty?? 0 : self.reduce(:+)
  end

  def square
    self.map {|n| n**2}
  end

  def square!
    self.map! {|n| n**2}
  end

end