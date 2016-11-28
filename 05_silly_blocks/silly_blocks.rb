def reverser
  words = yield.split" "
  words.map {|word| word.reverse }.join(" ")
end

def adder(n=1)
  yield(n) + 1 + (n-1)
end

def repeater(number=1)
  number.times {|x| yield }
end

