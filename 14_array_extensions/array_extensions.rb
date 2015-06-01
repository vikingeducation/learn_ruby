class Array
  def sum
    self.inject(0) {|total, ele| total+ele}
  end

  def square
    self.map {|ele| ele**2}
  end

  def square!
    #self.each_with_index {|ele, ind| self[ind] = ele**2}
    self.map! {|ele| ele**2}
  end
end