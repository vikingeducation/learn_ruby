def reverser
  yield.split(" ").map{|word| word.reverse}.join(" ")
end

def adder(default_value=1)
  yield.send(:+,default_value)
end

def repeater(n=1)
  n.times{yield}
end
