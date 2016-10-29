def echo(input)
  "#{input}"
end

def shout(input)
  "#{input.upcase}"
end

def repeat(input, number=2)
  (input + " ") * (number-1) + input
end

def start_of_word(string, position)
  string[0..position-1]
end

def first_word(string)
  all_words = string.split(" ")
  all_words[0]
end

def titleize(string)
  no_capitalization = ["and", "over", "the"]

  all_words = string.split(" ")
  all_words.each { |word| word.capitalize! unless no_capitalization.include?(word) }
  all_words[0].capitalize!
  all_words.join(" ")
end