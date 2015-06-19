class Array

  def sum
    total = 0
    self.each {|num| total += num}
    total
  end

  def square
    self.map {|num| num ** 2}
  end

  def square!
    self.map! {|num| num ** 2}
  end

end