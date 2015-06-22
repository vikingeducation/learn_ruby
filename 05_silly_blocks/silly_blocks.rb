def reverser

  words = yield.split

  words.each do |w|
    w.reverse!
  end

  words.join(" ")

end


def adder(n=1)

 yield + n

end


def repeater (number=1)

  number.times do
  yield
  end

end