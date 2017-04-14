def reverser(block="hello dolly")
  yield.split.map {|word| word.reverse}.join(" ")
end


def adder(num=1)
  yield + num
end


def repeater(num=1)
  iteration = 0
  num.times do
    yield if block_given?
    iteration += 1
  end
end
