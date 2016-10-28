def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  Array.new(num, "#{word} ").join.strip
end

def start_of_word(word, num)
  word.split("")
  word[0..(num - 1)]
end

def first_word(phrase)
  words = "#{phrase}".split(' ')
  words[0]
end

def titleize(title)
  words_to_ignore = ["of", "and", "the", "a", "for", "yet", "so", "but", "in", "at", "with", "over"]
  title_words = title.split
  title_words[0].capitalize!
  title_words[-1].capitalize!
  title_words.each {|word| word.capitalize! unless words_to_ignore.include?(word)}
  title_words.join(' ')
end