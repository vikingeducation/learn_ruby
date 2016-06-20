class Array
  def sum
    reduce(0,:+)
  end

  def square
    map{|i| i**2}
  end

  def square!
    map!{|i| i**2}
  end
end