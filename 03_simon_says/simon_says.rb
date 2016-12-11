# TDD RSpec
# simon_says.rb

# Prints the word
def echo(word)
  return word
end

# Converts the word to upper case
def shout(word)
  upper_case = word.upcase
end

# Repeat a word a particular number of times
def repeat(word, num=2)
  word = word + " "
  word *= num

  # Removes trailing whitespace
  word.rstrip
end

# Returns the first n characters of a string
def start_of_word(word, num_chars)
  word[0, num_chars]
end

# Get the first word of a sentence
def first_word(word)
  words = word.split(" ")
  words[0]
end

# Capitalizes first letter of each word in a title and ignores little words - the first word in the title is always capitalized
def titleize(word)
  words = word.split(" ")
  little_words = ["and", "or", "the", "but", "over"]
  first_word = words.first

  words.each do |word|
    banned_word = false

    # Check if the word is a little word 
    little_words.each do |banned|
      if(banned == word)
        banned_word = true
      end
    end

    # If its the first word of the title or not a banned word it can be capitalized
    if((first_word == word) || (banned_word == false))
      word.capitalize!
    end
  end
  words.join(" ")
end
