class Array

  def sum
    sum = 0
    self.each do |e|
      sum += e
    end
    sum
  end

  def square
    arr = []

    self.each do |e|
      arr.push(e**2)
    end

    arr
  end

  def square!
    # self.map do |e|
    #   e**2
    # end

    self.each_with_index do |e,i|
      self[i] = e**2
    end
  end

end