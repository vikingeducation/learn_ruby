def reverser 
  return yield.split(" ").map { |word| word.reverse }.join(" ") 
end

def adder(int = 1)
  return yield + int
end

def repeater(i=3)
	return i.times { yield }
end
