def reverser &string
  string.call.split(' ').collect{|word| word.reverse}.join(' ')
end

def adder number=1
  yield + number
end

def repeater times=1
  times.times { yield times }
end