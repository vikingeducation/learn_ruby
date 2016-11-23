
def reverser
  substrings = yield().split(" ")
  return substrings.map { |word| word.reverse }.join(" ")
end

def adder(value = 1)
  return yield() + value
end

def repeater(times = 1)
  times.times do
    yield()
  end
end