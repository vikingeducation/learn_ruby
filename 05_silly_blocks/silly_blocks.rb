def reverser
  my_words = yield.split(" ")
  my_words.each do |word|
    word.reverse!
  end
  my_words.join(" ")
end

def adder (number = 1)
  yield + number
end

def repeater (number = 1)
  number.times do
    yield
  end
end