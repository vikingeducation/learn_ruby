def reverser

   yield.split(" ").map!{|x| x.reverse}.join(" ")

end

def adder(num = 1)
  added = yield
  added += num

end

def repeater (num = 1)

  num.times {yield}

end