def reverser
  words = yield
  words_array = words.split(' ')
  words_array.each { |word|
    word.reverse!
  }
  words_array = words_array.join(' ')
end

def adder(number_to_add_by = 1)
  number = yield
  number += number_to_add_by
end

def repeater(repetition = 1)
  n=0
  while n < repetition
    block_was_executed = yield
    block_was_executed = true
    n += 1
  end
  n
end
