class Array

  def sum

    result = 0

    if self.nil?
      result = 0
    else
      self.each_index do |e|
        result += self[e].to_i
      end
    end

    return result

  end

  def square

    if self.nil?
      return self
    else
      self.map do |e|
        e ** 2
      end
    end

  end

  def square!

    squared_array = []

    if self.nil?
      return self
    else
      squared_array = self.map! do |e|
        e ** 2
      end
    end

    #return squared_array
  end


end