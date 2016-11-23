
def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, times = 2)
  return_string = []
  times.times do |count|
    return_string << string
  end
  return return_string.join(" ")
end

def start_of_word(word, first_letters)
  return word[0..(first_letters - 1)]
end

def first_word(string)
  substrings = string.split(" ")
  return substrings[0]
end

def titleize(string)
  substrings = string.split(" ")
  return_string = []
  little_words = ["and", "over", "the"]
  substrings.each_with_index do |word, index|
    if index == 0
      return_string << word.capitalize
    elsif !little_words.include?(word)
      return_string << word.capitalize
    else
      return_string << word
    end
  end
  return return_string.join(" ")
end