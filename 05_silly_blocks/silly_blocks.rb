def reverser
  yield.split(" ").map(&:reverse).join(" ")
end

def adder(n=1)
  yield + n
end

def repeater(times=1)
  times.times do
    yield
  end
end
