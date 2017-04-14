class Array
  def sum
    self == [] ? 0 : self[0] + self[1..-1].sum
  end

  def square
    self.map { |e| e ** 2  }
  end

  def square!
    self.map! { |e| e ** 2  }
  end
end
