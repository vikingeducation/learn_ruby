class Array
  def sum
    inject(0) { |sum, n| sum + n }
  end

  def square
    map { |x| x**2 }
  end

  def square!
    map! { |x| x**2 }
  end
end
