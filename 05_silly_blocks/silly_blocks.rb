def reverser
  array = yield.split(" ")
  array.map! {|word| word.reverse}
  array.join(" ")
end

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
  num.times {yield}
end