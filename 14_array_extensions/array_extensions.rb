class Array
  def sum
    self.empty? ? 0 : self.inject(0){|result,num| result + num}
  end

  def square
    self.empty? ? [] : self.map{|num| num**2}
  end

  def square!
    self.map!{|num| num**2}
  end
end
