class Array

  def sum
    self.inject(0) {|sum, item| sum + item}
  end

  def square
    self.map {|sqr| sqr**2}
  end

  def square!
    self.map! {|sqr| sqr**2}
  end

end