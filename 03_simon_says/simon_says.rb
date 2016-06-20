def echo(word)
word
end

def shout(word)
word.upcase
end

def repeat(word, repeater=2)
counter=1
result=word
while counter<repeater
  result+=" "+ word
  counter+=1
end
result
end

def start_of_word(word,letters)
word[0,letters]
end

def first_word(word)
  word.split(" ")[0]
end

def titleize(word)
little_words=["the","and","over"]
words=word.split(" ")
words[0].capitalize!
counter=1
while counter<words.length
  unless little_words.include?(words[counter])
    words[counter].capitalize!
  end
  counter+=1
end
words.join(" ")
end