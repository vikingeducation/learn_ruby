def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase,times=2)
  result = "#{phrase} " * times
  result.strip
end

def start_of_word(word, letters)
  word[0, letters]
end

def first_word(phrase)
  words = phrase.split(" ")
  words[0]
end

def titleize(phrase)
  words = phrase.split(" ")
  words[0].capitalize!

  little_words = ["a", "an", "and", "the", "over", "on", "or"]
  words.each do |word|
    unless little_words.include?(word)
      word.capitalize!
    end
  end

  new_phrase = ""
  words.each do |word|
    new_phrase += (word + " ")
  end

  new_phrase.strip
end