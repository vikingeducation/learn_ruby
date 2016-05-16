def reverser
  words = yield.split
  reversed_words = ""
  words.each_with_index do |word, index|
    if index == 0
      reversed_words += word.reverse
    else
      reversed_words += " " + word.reverse
    end
  end

  reversed_words
end

def adder(addend=1)
  addend + yield
end

def repeater(times_to_repeat=1)
  times_to_repeat.times { yield }
end
