def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(words, num=2)
  answer = ""
  num.times do 
    answer = answer + words + " "
  end
  answer.strip
end

def start_of_word(word, letters)
  word[0,letters]
end

def first_word(word)
  first_word = word.split(" ")
  first_word[0]
end

def titleize(word)
  word_list = word.split(" ")
  word_list[0].capitalize!
  word_list.each do |the_word|
    if the_word.length > 4
      the_word.capitalize!
    end
  end
  word = word_list.join(" ")
end
