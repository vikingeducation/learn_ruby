def reverser
  yield.split.map { |word| word.reverse}.join(" ")
end

def adder(num=1)
  yield + num
end

def repeater(loops=1)
  loops.times do
    yield
  end
end
