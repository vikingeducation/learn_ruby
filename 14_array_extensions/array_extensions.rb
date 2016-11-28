class Array

def sum
  self.reduce(0, :+)
end

def square
  return [] if self.empty?
  self.map {|x| x * x}
end

def square!
  return [] if self.empty?
  self.map! {|x| x * x}
end


end