

class Array
  def sum
    return 0 if empty?
    inject(:+)
  end
end



class Array
  def square!
    map!{|i| i**2}
  end

  def square
    self.dup.square!
  end
end



class Array
  def my_uniq
    uniq_els = []
    each{|i| uniq_els << i unless uniq_els.include?(i)}
    uniq_els
  end
  
end


class Array
  def two_sum
    result = []
    (0...(self.length)).each do |i|
      ((i+1)...self.length).each do |j|
        result << [i,j] if self[i] + self[j] == 0

      end
    end
    result
  end
end



class Array
  def median
    return nil if empty?
    return self[0] if count == 1
    mid_point = self.length/2
    second_point = (self.length/2)-1
    sorted = self.sort
    if self.count.odd?
      sorted[mid_point]
    elsif self.count.even?
      (sorted[mid_point] + sorted[second_point])/2.0
    end
  end
end


class Array
  def my_transpose
    columns = []
    col_idx = 0
    until col_idx == self[0].length
      column = []
      (0...self.length).each do |row|
        column << self[row][col_idx]

      end
      columns << column
      col_idx += 1
    end
    columns
  end
end

