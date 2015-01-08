def reverser
  yield.split(' ').map(&:reverse).join(' ')
end

def adder (num = 1)
  return yield + num
end

def repeater (repeat_times=1)
  repeat_times.times do
   yield
 end
end