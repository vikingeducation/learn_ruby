def echo word
  word
end

def shout string
  string.upcase
end

def repeat word, num=2
  ((word+' ')*num).strip
end

def start_of_word word, num
  word[0, num]
end

def first_word string
  string.split(" ").first
end

def titleize string
  little_words = %w[and the over]
  words = string.split(' ')
  words.first.capitalize!
  words.map! do |word|
    little_words.include?(word) ? word : word.capitalize
  end.join(' ')
end
