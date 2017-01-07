def reverser
  str = yield
  str.split(" ").map { |s| s.reverse }.join(" ")
end

def adder(num1 = 1)
  yield + num1
end

def repeater(iterations = 1)
  iterations.times { yield }
end