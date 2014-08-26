class Array

def sum
  return 0 if self.empty?
  self.inject(:+)
end

def square
  return self if self.empty?
  self.map {|element| element ** 2}
end

def square!
  return self if self.empty?
  self.each_with_index do |element, index|
    self[index] = element ** 2
  end
end


end
