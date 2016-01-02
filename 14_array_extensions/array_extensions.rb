class Array

  def sum
    if self.empty?
      0
    else
      self.inject(:+)
    end
  end


  def square
    if self.empty?
      []
    else
      self.map {|num| num**2 }
    end
  end


  def square!
    if self.empty?
      []
    else
      self.map! {|num| num**2 }
    end
  end



end