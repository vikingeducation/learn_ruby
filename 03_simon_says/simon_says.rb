def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  line=""
  n.times {line<<" #{word}"}
  line
end

def start_of_word(word,num)
  word[0..(num-1)]
end

def first_word(word)
  ind = word.index(" ")
  word[0..(ind-1)]
end


def titleize(words)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  word_array = words.split(" ")
  word_array.each do |word|
    unless words_no_cap.include?(word)
      word[0] = word[0].upcase
    end
  end
  word_array[0][0] = word_array[0][0].upcase
  word_array.join(" ")
end
#puts titleize("asd sdsdl ads and over dslaakd")
