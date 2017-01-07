def reverser
  temp = yield
  word = yield.split(" ")
  word.each do |str|
    temp = temp.sub(str, str.reverse)
  end
  return temp
end

def adder(num=1, &args)
  args.call + num
end 

def repeater(num=1, &args)
  num.times do      
    args.call
  end
end