def reverser
  reversed = yield.split(" ").map{|word| word.reverse}
  return reversed.join(" ")
end

def adder(n=1)
  yield + n
end

def repeater(n=1)
  block_was_executed = false
  n.times { yield }
  block_was_executed = true
end