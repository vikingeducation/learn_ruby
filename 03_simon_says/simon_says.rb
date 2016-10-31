def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, times=2)
  text + ((" "+text) * (times-1))
end

def start_of_word(text, letters)
  text[0..letters-1]
end

def first_word(text)
  array = text.split(' ')
  array[0]
end

def capitalize(word)
  word[0] = word[0].upcase
  word
end

def titleize(text)
  array = text.split(' ')
  little_words = ['a', 'an', 'the', 'and', 'or', 'but', 'for', 'by', 'near', 'under', 'over', 'of']
  output = array.map.with_index(0) do |word, index|
    if index == 0
      capitalize(word)
    elsif little_words.include?(word)
      word
    else
      capitalize(word)
    end
  end
  output = output.join(' ')
end
