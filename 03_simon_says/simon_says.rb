def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n=2)
  word + " #{word}"*(n-1)
end

def start_of_word(word, number_of_letters)
  word[0..(number_of_letters-1)]
end

def first_word(sentence)
  sentence.split(' ')[0]
end

def titleize(string)
  little_words = ["and", "or", "the", "over", "to", "the", "a", "but"]
  titleized_string = string.capitalize!
  titleized_string = string.split.map do |word|
    if little_words.include? word
      word
    else
      word.capitalize
    end
  end.join(' ')
  titleized_string
end