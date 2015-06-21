class Array

  def sum
    reduce(0, :+)
  end

  def square
    map { |number| number ** 2 }
  end

  def square!
    map! { |number| number ** 2 }
  end

end