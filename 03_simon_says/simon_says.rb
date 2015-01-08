def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word,n=2)
  phrase = [word]*n
  phrase.join(" ")
end

def start_of_word(word,n)
  word[0...n]
end

def first_word(phrase)
  words = phrase.split(" ")
  words[0]
end

def titleize(title)
  words = title.split(" ")
  title = words.map do |word| 
    if word.length > 3 && word != "over"
      word.capitalize
    else
      word
    end
  end
  title[0] = title[0].capitalize
  title.join(" ")
end