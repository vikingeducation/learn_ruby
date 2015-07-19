def reverser
  yield.split(" ").map{|item| item.reverse}.join(" ")
end

def adder(add_er = 1)
  yield + add_er
end

def repeater(num=1)
  num.times{ yield }
end