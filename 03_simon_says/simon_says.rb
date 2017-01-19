def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, times = 2)
  ("#{message} " * times).strip
end

def start_of_word(word, num_letters)
  word[0..(num_letters-1)]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  little_words = ["and", "over", "the"]
  title_case_array = sentence.split.map.with_index do |word, i|
    if (i != 0) and little_words.include?(word)
      word
    else
      word.capitalize
    end
  end
  title_case_array.join(" ")
end
