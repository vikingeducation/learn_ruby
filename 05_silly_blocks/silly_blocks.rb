def reverser
  string = yield
  words = string.split(" ")
  words.map! {|word| word.reverse}
  words.join(" ")
end

def adder(n = 1)
  yield + n
end

def repeater(number_of_times = 1)
  number_of_times.times {yield}
end
