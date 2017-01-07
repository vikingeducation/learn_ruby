class Array

  def sum
    total = 0
    self.each {|num| total += num }
    return total
  end

  def square
    #map: invokes the block once for each element of self, replacing the elemtn with the value returned by block 
    map { |num| num * num}
  end

  def square!
    map! {|num| num * num}
  end
end