class Array

  def sum
    result = 0
    self.each {|num| result +=num}
    result
  end

  def square
    result = []
    self.each {|num|  result << num*num}
    result
  end

  def square!
    self.each_with_index {|num,index|  self[index] = num*num}
  end

end
