def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 2)
  result = string
  (num - 1).times { result += (" " + string) }
  result
end

def start_of_word(string, chars)
  string[0..chars - 1]
end

def first_word(string)
  words = string.split(/\s/)
  words[0]
end

def titleize(title)
  little_words = ["the", "and", "over"]
  words = title.split(/\s/)
  result = []
  words.each do |word|
    little_words.include?(word) ? result << word : result << word.capitalize
  end
  result[0] = result[0].capitalize
  result.join(" ")
end
