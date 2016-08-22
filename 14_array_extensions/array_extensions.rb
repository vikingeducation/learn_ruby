class Array
  def sum
    self.reduce(0) {|total, item| total + item}
  end

  def square
    self.map {|item| item**2}
  end

  def square!
    self.map! {|item| item**2}
  end
end
