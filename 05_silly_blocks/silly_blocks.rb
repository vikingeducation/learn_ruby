def reverser
  array = yield.split(" ")
  array.map! {|x| x.reverse}
  array.join(" ")
end

def adder(n=1)
  yield + n
end

def repeater(n=1)
  n.times {yield}
end
