def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num=2)
  ((string + " ") * num).strip
end

def start_of_word(word, num=0)
  word[0..num -1]
end

def first_word(string)
  string.partition(" ").first
end

def titleize(string)
  no_cap = ["and", "or", "the", "over", "to", "a", "but"]
  capitalized_words = string.split(" ").map do |word|
    if no_cap.include?(word)
      word
    else
      word.capitalize
    end
  end
  capitalized_words.first.capitalize!
  capitalized_words.join(' ')
end