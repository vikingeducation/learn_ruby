def reverser 
  yield.split(" ").map { |word| word.reverse }.join(" ") 
end

def adder int = 1
  yield + int
end

def repeater iterations = 1
  iterations.times do
    yield
  end
end