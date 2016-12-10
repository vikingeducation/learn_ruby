Array.class_eval do

  def sum()
    self.inject(0){|total, item| total + item}
  end

  def square
    self.map {|x| x**2}
  end

  def square!
    self.each_with_index{|value,index| self[index] = value**2}
  end

end


