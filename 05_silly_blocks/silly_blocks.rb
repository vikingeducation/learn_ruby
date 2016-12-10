def reverser()
  arr = yield.split(" ")
  arr.each do |x|
    x.reverse!
  end
  arr.join(" ")
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  (1..num).each {|x|yield}
end