def reverser
  phrase = yield
  words = phrase.split(" ")
  reverse_words = words.map do |word|
    word.reverse
  end
  reverse_words.join(" ")
end

def adder(*add_this_much)
  how_much_to_add = add_this_much[0] || 1
  yield + how_much_to_add
end

def repeater(*number_of_repeats)
  how_many_times = number_of_repeats[0] || 1
  how_many_times.times { yield }
end