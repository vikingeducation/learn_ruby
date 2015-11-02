def echo word
  word
end

def shout word
  word.upcase
end

def repeat word, number = 2
  result = ''
  number.times { result += word + ' '}
  result.strip
end

def start_of_word word, characters
  word[0, characters]
end

def first_word phrase
  phrase.split(' ').first
end

def titleize phrase
  do_not_cap = ['the', 'a', 'and', 'over']
  words = []
  phrase.capitalize.split(' ').collect { |word| do_not_cap.include?(word) ? words << word : words << word.capitalize }
  words.join(' ')
end
