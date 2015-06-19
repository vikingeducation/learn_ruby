def reverser
  s = yield
  words = s.split(" ")
  words.each { |word| word.reverse! }
  words.join(" ")
end

def adder(amount = 1)
  yield + amount
end

def repeater(times = 1)
  times.times do
    yield
  end
end