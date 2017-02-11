class Array

  def square
    if self.empty?
      []
    else
      self.map { |i| i*i  }
    end
  end

  def square!
    self.each_with_index do |item, i|
      self[i] = item*item
    end
  end

end
