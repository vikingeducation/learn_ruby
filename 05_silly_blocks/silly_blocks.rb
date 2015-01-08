def reverser
  phrase = yield
  words = phrase.split(" ")
  reverse_words = words.map do |word|
    word.reverse
  end
  reverse_words.join(" ")
end

def adder(add_this_much=1)
  yield + add_this_much
end

def repeater(number_of_repeats=1)
  number_of_repeats.times { yield }
end