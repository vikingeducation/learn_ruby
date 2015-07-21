class Array

  def sum
    self.inject(0) {|sum, item| sum + item}
  end

  def square
    self.map {|item| item**2}
  end

  def square!
    self.map! {|item| item**2}
  end

end
