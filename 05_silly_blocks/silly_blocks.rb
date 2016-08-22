def reverser
  yield.split(" ").map do |word|
    word.reverse
  end.join(" ")
end

def adder(num_add = 1)
  yield + num_add
end

def repeater(num_repeat = 1)
  num_repeat.times { yield }
end
