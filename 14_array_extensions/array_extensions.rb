class Array

  def sum
    self.inject(0) {|result, num| result + num}
  end

  def square
    self.map {|num| num * num}
  end

  def square!
    self.map! {|num| num * num}
  end

end