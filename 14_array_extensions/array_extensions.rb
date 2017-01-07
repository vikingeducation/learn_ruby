class Array
  def sum
    return 0 if self.empty?
    self.reduce(:+)
  end

  def square
    self.map{|num| num*num}
  end

  def square!
    self.map!{|num| num*num}
  end
end
