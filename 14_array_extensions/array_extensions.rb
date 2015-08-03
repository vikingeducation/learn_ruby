class Array

  def sum
    reduce(0){|acc, val| acc += val}
  end

  def square
    map{|val| val ** 2}
  end

  def square!
    map!{|val| val ** 2}
  end

end