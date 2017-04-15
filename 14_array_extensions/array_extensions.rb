class Array

  attr_accessor :sum

  def initialize
  end

  def sum
    sum = 0
    if self.empty?
      sum
    else
      self.each {|num| sum += num}
      sum
    end
  end

  def square
    if self.empty?
      self
    else
      new_array = []
      self.each {|num| new_array << (num ** 2)}
      new_array
    end
  end

    def square!
      self.map! {|num| num ** 2}
    end


end
