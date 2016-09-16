def reverser(&block)
  yield.split(" ").map(&:reverse).join(" ")
end

def adder(num=1, &block)
  block.call + num
end

def repeater(n=1, &block)
  n.times &block
end