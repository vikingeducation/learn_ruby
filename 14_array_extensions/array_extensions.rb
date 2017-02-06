class Array
  def sum
    sum = 0
    return sum unless self.count > 0

    self.each { |i| sum += i }

    return sum
  end

  def square
    return [] unless self.count > 0

    squared_arr = []
    self.each { |i| squared_arr.push(i**2) }

    return squared_arr
  end

  def square!
    return self unless self.count > 0

    self.each_with_index { |val, i| self[i] = val**2 }

    return self
  end

end