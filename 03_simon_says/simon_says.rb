def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, cycles=2)
  total = word
  (cycles - 1).times do
    total += " " + word
  end
  total
end

def start_of_word(word, num)
  word[0..(num - 1)]
end

def first_word(phrase)
  arr = phrase.split(" ")
  arr[0]
end

def titleize(phrase)
  little_words = ["and", "over", "the"]
  arr = phrase.split(" ")
  return_string = arr.shift.capitalize
  arr.each do |word|
    if little_words.include?(word)
      add_word = word
    else
      add_word = word.capitalize
    end
    # add_word = word.capitalize unless little_words.include?(word)
    return_string += " " + add_word
  end
  return_string
end