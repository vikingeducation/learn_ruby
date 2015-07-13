def reverser
  string = yield
  words = string.split (" ")
  reverse = words.map {|word| word.reverse}
  reverse.join (" ")
end

def adder (add=1)
  num = yield
  num += add
end

def repeater (repeats=1)
  repeats.times {yield}
end