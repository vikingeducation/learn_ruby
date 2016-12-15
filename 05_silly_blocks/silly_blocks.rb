def reverser()
  return yield.reverse if yield.split(' ').size == 1
  yield.split(' ').each { |w| w.reverse! }.join(' ')
end

def adder(num=1)
  yield + num
end

def repeater(repeats=1)
  repeats.times do
    yield
  end
end
