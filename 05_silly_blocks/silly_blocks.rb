##I still really don't get blocks. 

def reverser(&block)
  splitblock = block.call.split
  list = []
  splitblock.each do |word|
    list.push(word.reverse)
  end
  return list.join(" ")
end

def adder(x = 0)
  if x == 0
    return yield + 1
  else
    return yield + x
  end
end

def repeater(x = 0)
  if x == 0
    yield 
  else 
    x.times do |n|
      yield
    end
  end
end