def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num=2)
  word += ((' ' + word) * (num - 1))
end

def start_of_word(word, num=1)
  word[0...num]
end

def first_word(word)
  word.split(" ")[0]
end

def titleize(words)
  return words.capitalize unless words.include?(' ')
  little_words = ['a', 'the', 'in', 'to',
                  'and', 'an', 'over']
  words = words.split(' ').each_with_index do |word, i|
    word.capitalize! unless little_words.include?(word) && i != 0
  end
  words.join(' ')
end
