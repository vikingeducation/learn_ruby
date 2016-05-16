def echo(words)
  return words
end

def shout(words)
  return words.upcase
end

def repeat(words, repeat=2)
  output = words
  (repeat-1).times do
    output += " #{words}"
  end
  return output
end

def start_of_word(words, letters)
  words[(0..letters-1)]
end

def first_word(words)
  words.split[0]
end

def titleize(words)
  little_words = ["and","or","the","an","a", "over", "around", "of"]
  titles = []
  words.split.each_with_index do |word, index|
    if little_words.include?(word) && index != 0
      titles << word
    else
      titles << word.capitalize
    end
  end
  titles.join(" ")
end
