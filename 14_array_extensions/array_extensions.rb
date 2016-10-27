class Array
  def sum
    if self.length == 0
      0
    else
      self.inject(0){|sum,x| sum + x }
    end
  end

  def square
    if self.empty?
      []
    else
      self.map { |e| e**2 }
    end
  end

  def square!
    if self.empty?
      []
    else
      self.map! { |e| e**2 }
    end
  end



end