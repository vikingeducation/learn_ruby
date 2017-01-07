def reverser
  words = yield.split(" ")
  reversed = []
  words.each do |word|
    reversed << word.reverse
  end
  return reversed.join(" ").strip
end


def adder(increase=1)
  number = yield
  return number + increase
end


def repeater(times=1)
  times.times { yield }
end
