def reverser
  array_of_words = yield.split
  new_array = []
  arr_counter = 0
  while arr_counter < array_of_words.length
    new_word = ""
    letter_counter = array_of_words[arr_counter].length - 1
    while letter_counter >= 0
      new_word << array_of_words[arr_counter][letter_counter]
      letter_counter -= 1
    end
    arr_counter += 1
    new_array << new_word
  end
  new_array.join(" ") 
end

def adder(to_add=1)
  yield + to_add
end

def repeater(num=1)
  num.times do
    yield if block_given?
  end

end