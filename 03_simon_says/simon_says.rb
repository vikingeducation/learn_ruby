def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  ((word + " ") * n).strip
end

def start_of_word(word, n)
   word[0...n]
end

def first_word(phrase)
  a = phrase.split(" ")
  a[0]
end

def titleize(phrase)
  words = phrase.split(" ")
  words.each do |e|
    e.capitalize! if e.length > 4
  end
  words[0].capitalize!
  words.join(" ")
  #puts words
end

titleize("the bridge over the river Kwai")
