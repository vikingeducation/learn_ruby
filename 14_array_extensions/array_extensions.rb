class Array
  def sum
    s = 0
    self.each {|x| s += x}
    s
  end

  def square
    self.collect {|x| x**2}
  end

  def square!
    self.collect! {|x| x**2}
  end
end
