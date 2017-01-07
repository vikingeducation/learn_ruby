class Array

  def sum
    self.inject(0) {|sum, n| sum + n}
  end

  def square
    self.map {|n| n * n}
  end

  def square!
    self.map! { |n| n * n}
  end
end
