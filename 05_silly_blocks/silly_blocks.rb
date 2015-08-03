def reverser
  yield.split(" ").map{|word| word.reverse}.join(" ")
end

def adder(addend=1)
  yield + addend
end

def repeater(reps=1)
  reps.times do
    yield
  end
end