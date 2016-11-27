class Array
  attr_accessor :array

  def initialize
    @array = []
  end

  def sum
    return 0 if self == []
    sum = 0
    self.each { |num| sum += num}
    sum
  end

  def square
    return [] if self == []
    self.map { |num| num * num}
  end

  def square!
    return self if self == []
    self.map! { |num| num * num}
  end
end