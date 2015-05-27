class Array

  def sum
    result = 0
    self.each do |member|
      result += member
    end
    result
  end

  def square
    result = []
    self.each_with_index do |member, index|
      result[index] = member * member
    end
    result
  end

  def square!
    self.each_with_index do |member, index|
      self[index] = member * member
    end
    self
  end


end