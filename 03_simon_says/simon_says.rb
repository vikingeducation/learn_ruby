require 'set'

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, r = 2)
  ([word]*r).join(' ')
end

def start_of_word(word, l)
 word[0..l-1]
end

def first_word(words)
  words.split.first
end

def titleize(words)
  # do_not_cap = ['and','or', 'the', 'over', 'to', 'the', 'a', 'but']
  do_not_cap = Set.new(['and','or', 'the', 'over', 'to', 'the', 'a', 'but'])
  words.split.each_with_index.map do |word, i| 
    if do_not_cap.include?(word) && i != 0
      word
    else
      word.capitalize
    end
  end.join(' ')
  #words_array.join(' ')
end
