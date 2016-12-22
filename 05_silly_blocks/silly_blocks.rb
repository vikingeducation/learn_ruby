def reverser() 
  reversed = []
  yield.split.each do |word|
    reversed << word.reverse
  end
  reversed.join(' ')
end

def adder(n=1)
  yield + n
end

def repeater(r=1)
  r.times do
    yield
  end
end

