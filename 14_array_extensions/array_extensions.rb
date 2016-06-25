class Array



  def sum
    sum = 0
    self.map {|item| sum += item} 
    sum
  end

  def square
    self.map {|item| item ** 2}
  end

  def square!
    self.map! {|item| item ** 2}
  end
end