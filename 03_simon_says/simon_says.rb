def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, multi = 2)
  sentence = ""
  (1...multi).each do |x|
    sentence += word + " "
  end
  sentence += word
  return sentence
end

def start_of_word(word,location)
  sub_word = ""
  (0...location).each do |x|
    sub_word += word[x]
  end
  return sub_word
end

def first_word(sentence)
  arr = sentence.split(" ")
  return arr[0]
end

def titleize(sentence)
  little_words = ["and","the","over"]
  words = sentence.split(" ")
  words.each_with_index do |word,location|
    if location == 0 || !little_words.include?(word)
      word.capitalize!
    end 
  end
  return words.join(" ")
end