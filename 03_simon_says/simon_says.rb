def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, number=2)
  (word + " ") * (number - 1) + word
end

def start_of_word(word, num_of_letters)
  new_word = ""
  counter = 0
  while counter < num_of_letters
    new_word << word[counter]
    counter += 1
  end
  new_word
end

def first_word(word)
  new_word = ""
  counter = 0
  while word[counter] != " "
    new_word << word[counter]
    counter += 1
  end
  new_word
end

def titleize(string)
  string_array = string.split(" ")
  new_array = []
  new_array << string_array[0][0].upcase + string_array[0][1..(string_array[0].length - 1)]
  string_array[1..(string_array.length - 1)].each do |word|
    if word != "and" && word != "the" && word != "over"
      new_array << word[0].upcase + word[1..(word.length - 1)]
    else
      new_array << word
    end

  end
  new_string = new_array.join(" ")
  new_string
end
