class Array
  def sum
    return 0 if self == []
    inject(:+)
  end

  def square
    return self if self == []
    self.map { |n| n * n }
  end

  def square!
    self.map! { |n| n * n}
  end
end