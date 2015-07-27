def echo (str)
  str
end

def shout (str)
  str.upcase
end

def repeat (str, n = 2)

  rep_str = ""
  rep_str << str

  (n-1).times do 
    rep_str << " #{str}"
  end

  return rep_str

end

def start_of_word (word, n)

  word[0..n-1]

end

def first_word (str)

  words = str.split
  return words[0]

end

def titleize (str)

  words = str.split
  cap_words = []
  little_words = ['and', 'over', 'the']
  i=0

  while i<words.length
    if i == 0
      cap_words << words[i].capitalize
    elsif little_words.include?(words[i])
      cap_words << words[i]
    else
      cap_words << words[i].capitalize
    end
    i+=1
  end

  return cap_words.join(' ')

end 

