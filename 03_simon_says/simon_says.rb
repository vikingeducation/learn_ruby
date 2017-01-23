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

def titleize(sentence)
  excluded_words = %w(a an the for and nor but or yet so
                      at around by after along for from of
                      on to with without over)

  words = sentence.split(" ")
  words.map { |word| word.capitalize! unless excluded_words.include?(word) }
  words[0].capitalize!
  words.join(" ")
end