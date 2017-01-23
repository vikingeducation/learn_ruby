def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, num_times=2)
  output = (" " + phrase) * num_times
  output.strip
end

def start_of_word(word, num_letters)
  word[0..(num_letters - 1)]
end

def first_word(sentence)
  sentence.split[0]
end