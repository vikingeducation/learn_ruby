def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, times = 2)
  ("#{text} " * times).strip
end

def start_of_word(word, position)
  word[0...position]
end

def first_word(words)
  words.split.first
end

def titleize(words)
  little_words = [ "and", "over", "the" ]
  words_array = words.split.each_with_index.map do |word, index|
    little_words.include?(word) && index != 0 ? word : word.capitalize
  end
  words_array.join(" ")
end

