def reverser
  yield.split.map{ |e|  e.reverse}.join(' ')

end

def adder(num=1)
  yield+num
end

def repeater(reps=1)
  reps.times{yield}
end

