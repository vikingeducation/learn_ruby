def reverser
  yield.split(" ").map {|w| w.reverse}.join(" ")
end

def adder(incr=1)
  yield+incr
end

def repeater(nrep=1)
  nrep.times {yield}
end