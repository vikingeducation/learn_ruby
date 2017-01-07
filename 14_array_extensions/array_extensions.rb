class Array
  
  def sum
    if self.empty?
      return 0 
    else
    self.reduce(:+)
    end
  end

  def square
    self.map{|num| num*num}
  end

  def square!
    self.map!{|num| num*num}
  end
end